package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
    String url = "jdbc:mysql://localhost:3306/backend";
    String user = "root";
    String pass = "root";
    Connection connection;
    static
    DBConnect instance;

    public static DBConnect getInstance() {
        if (instance == null) instance = new DBConnect();
        return instance;
    }

    public Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, user, pass);
            return connection;
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public static void main(String[] args) {
        DBConnect.getInstance().getConnection();
    }
}
