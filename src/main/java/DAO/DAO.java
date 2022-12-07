package DAO;

import DB.DBConnect;
import Model.User;
import services.Checking;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAO {
    Connection connection = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    private static DAO instance = null;

    private DAO() {}

    public static DAO getInstance() {
        if (instance == null) instance = new DAO();
        return instance;
    }

    public User checkLogin(String username, String password) {

        try {
            String query = "SELECT * FROM USER WHERE username =  ? and password = ?";
            ps = getPrepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getInt(1), rs.getString(2), rs.getString(3));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public PreparedStatement getPrepareStatement(String query) throws SQLException {
        connection = DBConnect.getInstance().getConnection();
        return connection.prepareStatement(query);
    }

    public void addAccount(String email, String password, String fullName) throws SQLException {
        if(Checking.emailExist(email)) return;
        String query = "insert into accounts (email,password,full_name) values (?,?,?);";
        ps = getPrepareStatement(query);
        System.out.println(ps);
        ps.setString(1,email);
        ps.setString(2,password);
        ps.setString(3,fullName);
        ps.execute();
        ps.close();
    }

}
