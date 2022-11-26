package DAO;

import DB.DBConnect;
import Model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAO {
    Connection connection = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public User checkLogin(String username, String password) {

        try {
            String query = "SELECT * FROM USER WHERE username =  ? and password = ?";
            connection = DBConnect.getInstance().getConnection();
            ps = connection.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getInt(1), rs.getString(2), rs.getString(2));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }
}
