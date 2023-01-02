package services;

import Model.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserService extends Services{
    public static User findUser(String username, String password){
        try {
            String query = "SELECT * FROM USER WHERE Email =  ? and Password = ?";
            PreparedStatement ps;
            ps = dao.getPrepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs;
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getInt("idAccount"), rs.getString("Email")
                        , rs.getString("Password"),rs.getString("FullName"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }
    public static boolean emailExists(String email) throws SQLException {
        String query = "SELECT * from account where Email = ?";
        PreparedStatement ps;
        ps = dao.getPrepareStatement(query);
        ps.setString(1, email);
        ResultSet rs = ps.executeQuery();
        return rs.next();
    }
}
