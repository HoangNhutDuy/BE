package DAO;

import DB.DBConnect;
import Model.Category;
import Model.Product;
import services.Checking;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
    public List<Category> loadCategory() {

        try {
            List<Category> categories = new ArrayList<>();
            String sql = "SELECT * FROM CATEGORY";
            connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                categories.add(new Category(rs.getString("IDCATE"), rs.getString("NAMECATE")
                        , rs.getString("IMG_CATE"), rs.getString("DESCRIPTION")));
            }

            return categories;

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }
    public List<Product> getProductbyCategory(String id) {
        try {
            List<Product> products = new ArrayList<>();
            String sql = "SELECT * FROM PRODUCT WHERE IDCATE = ?";
            connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getString("IDPRODUCT"),
                        rs.getString("NAME_PRODUCT"), rs.getString("PRODUCT_IMG"),
                        rs.getLong("PRICE"),
                        rs.getString("DESCRIPTION"), rs.getString("NAMECATE")));
            }
            return products;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
    public Product getProductbyId(String id) {

        try {
            String sql = "SELECT * FROM PRODUCT WHERE IDPRODUCT= ?";
            connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = null;
            ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getString("IDPRODUCT"), rs.getString("NAME_PRODUCT")
                        , rs.getString("PRODUCT_IMG"), rs.getLong("PRICE"), rs.getString("DESCRIPTION"),
                        rs.getString("NAMECATE"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }
}
