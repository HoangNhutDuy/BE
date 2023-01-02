package DAO;

import DB.DBConnect;

import Model.Category;
import Model.Product;
import Model.User;
import services.UserService;


import javax.xml.transform.Result;
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

    private DAO() {
    }

    public static DAO getInstance() {
        if (instance == null) instance = new DAO();
        return instance;
    }

    public PreparedStatement getPrepareStatement(String query) throws SQLException {
        connection = DBConnect.getInstance().getConnection();
        return connection.prepareStatement(query);
    }

    public void addAccount(String email, String password, String fullName) throws SQLException {
        if (UserService.emailExists(email)) return;
        String query = "insert into account (Email,Password,role,FullName) values (?,?,0,?);";
        ps = getPrepareStatement(query);
        ps.setString(1, email);
        ps.setString(2, password);
        ps.setString(3, fullName);
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

    public int count(String txtSearch) {
        try {
            String query = "SELECT count(*) from product where NAME_PRODUCT like ?";
            connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = null;
            ps = connection.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return 0;
    }

    public List<Product> search(String txtSearch, int index) {
        try {
            String query = "SELECT * from (\n" +
                    "SELECT ROW_NUMBER() over (ORDER BY IDPRODUCT asc) as r, product.* from product where product.NAME_PRODUCT like ?)" +
                    " as x where r BETWEEN 6*?-5 and 6*?;";
            connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = null;
            ps = connection.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            ps.setInt(2, index);
            ps.setInt(3, index);
            ResultSet rs = ps.executeQuery();
            List<Product> products = new ArrayList<>();
            while (rs.next()) {
                products.add(new Product(rs.getString("IDPRODUCT"), rs.getString("NAMECATE")
                        , rs.getString("PRODUCT_IMG"), rs.getLong("PRICE"), rs.getString("DESCRIPTION")
                        , rs.getString("NAMECATE")));
            }
            return products;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void main(String[] args) {
        DAO dao = DAO.getInstance();
        List<Product> products = dao.search("d",1);
        for (Product p :products){
            System.out.println(p);
        }
    }
}
