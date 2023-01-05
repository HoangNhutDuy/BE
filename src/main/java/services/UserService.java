package services;

import Model.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserService extends Services{
    public static User findUser(String email, String password) {
        try {
            String query = "SELECT * FROM Account WHERE Email =  ? and Password = ?";
            PreparedStatement ps;
            ps = dao.getPrepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs;
            rs = ps.executeQuery();
            if (rs.next())
                return new User(rs.getInt("idAccount"), rs.getString("Email")
                        , rs.getString("Password"), rs.getString("FullName"),rs.getInt("Role"));
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
        return null;
    }
    public static User findUser(User user){
        return findUser(user.getUsername(),user.getPassword());
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
