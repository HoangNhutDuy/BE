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

    public void addAccountforAdmin(String email, String password, String fullName, int role) throws SQLException {
        if (UserService.emailExists(email)) return;
        String query = "insert into account (Email,Password,role,FullName) values (?,?,?,?);";
        ps = getPrepareStatement(query);
        ps.setString(1, email);
        ps.setString(2, password);
        ps.setInt(3, role);
        ps.setString(4, fullName);
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

    public List<Product> getAllProduct() {
        try {
            List<Product> products = new ArrayList<>();
            String sql = "SELECT * FROM PRODUCT";
            connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getString("IDPRODUCT"),
                        rs.getString("NAME_PRODUCT"), rs.getString("PRODUCT_IMG"),
                        rs.getLong("PRICE"),
                        rs.getString("DESCRIPTION"), rs.getString("NAMECATE"), rs.getString("IDCATE")));
            }
            return products;
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
                        rs.getString("DESCRIPTION"), rs.getString("NAMECATE"), rs.getString("IDCATE")));
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
                        rs.getString("NAMECATE"), rs.getString("IDCATE"));
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
                        , rs.getString("NAMECATE"), rs.getString("IDCATE")));
            }
            return products;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void DeleteProductbyID(String id) {
        try {
            String query = "DELETE from product where IDPRODUCT = ?";
            connection = DBConnect.getInstance().getConnection();
            ps = connection.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void main(String[] args) {
        DAO dao = DAO.getInstance();
        User user = dao.getUserbyID(1);
        System.out.println(user);
    }

    public void addProduct(String idProduct, String nameProduct, String idCategory, String nameCategory, String imgProduct, double price, String descProduct) {
        try {
            String query = "INSERT INTO PRODUCT(IDPRODUCT,NAME_PRODUCT,IDCATE,NAMECATE,PRODUCT_IMG,PRICE,PRODUCT.DESCRIPTION)" +
                    "values(?,?,?,?,?,?,?)";
            connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, idProduct);
            ps.setString(2, nameProduct);
            ps.setString(3, idCategory);
            ps.setString(4, nameCategory);
            ps.setString(5, imgProduct);
            ps.setDouble(6, price);
            ps.setString(7, descProduct);
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public void addCategory(String idCate, String nameCate, String imgCate, String desc) {
        try {
            String query = "INSERT INTO CATEGORY(IDCATE,NAMECATE,IMG_CATE,DESCRIPTION) values (?,?,?,?)";
            connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, idCate);
            ps.setString(2, nameCate);
            ps.setString(3, imgCate);
            ps.setString(4, desc);
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public String getCategoryID(String cateName) throws SQLException {
        String name = "";
        String query = "SELECT IDCATE FROM CATEGORY where NAMECATE = ?";
        ps = connection.prepareStatement(query);
        ps.setString(1, cateName);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) name = rs.getString("IDCATE");

        return name;
    }

    public void deleteCategorybyID(String id) {
        try {
            String query = "DELETE from CATEGORY where IDCATE = ?";
            connection = DBConnect.getInstance().getConnection();
            ps = connection.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<User> getAllUser() {
        try {
            List<User> users = new ArrayList<>();
            String query = "SELECT * FROM ACCOUNT";
            connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = null;
            ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                users.add(new User(rs.getInt("idAccount"), rs.getString("Email"),
                        rs.getString("Password"), rs.getString("FullName"), rs.getInt("ROLE"), rs.getString("birthday")));
            }
            return users;

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public void deleteUser(int id) {
        try {
            String query = "DELETE from ACCOUNT where idAccount = ?";
            connection = DBConnect.getInstance().getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Category getCategorybyID(String id) {
        try {
            String sql = "SELECT * FROM CATEGORY WHERE IDCATE = ?";
            connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = null;
            ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Category(rs.getString("IDCATE"), rs.getString("NAMECATE")
                        , rs.getString("IMG_CATE"), rs.getString("DESCRIPTION"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public void editCategory(String id, String name, String img, String desc) {
        try {
            String sql = "UPDATE CATEGORY set NAMECATE = ?,IMG_CATE = ?, DESCRIPTION = ? WHERE IDCATE = ?";
            connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, img);
            ps.setString(3, desc);
            ps.setString(4, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }


    public void editProduct(String nameProduct, String nameCategory, String imgProduct, double price, String descProduct, String idProduct) {
        try {
            String sql = "UPDATE PRODUCT set NAMECATE = ?,NAME_PRODUCT = " +
                    "?, PRODUCT_IMG = ?,PRICE = ?, DESCRIPTION = ? WHERE IDPRODUCT = ?";
            connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, nameCategory);
            ps.setString(2, nameProduct);
            ps.setString(3, imgProduct);
            ps.setDouble(4, price);
            ps.setString(5, descProduct);
            ps.setString(6, idProduct);
            ps.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public User getUserbyID(int id) {
        try {
            String sql = "SELECT * FROM Account WHERE IDACCOUNT = ?";
            connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = null;
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getInt("IDACCOUNT"), rs.getString("EMAIL")
                        , rs.getString("PASSWORD"), rs.getString("FULLNAME"), rs.getInt("ROLE"), rs.getString("birthday"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return null;
    }

    public void editUserbyId(int id, String fullName, String email, String password, int role) {
        try {
            String query = "UPDATE ACCOUNT set Email = ?,Password = ?, ROLE = ?, FULLNAME = ? " +
                    "where idAccount = ?";
            connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            ps.setInt(3, role);
            ps.setString(4, fullName);
            ps.setInt(5, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public User findByEmail(String email) {
        try {
            String query = "select * from account where Email = ?";
            connection = DBConnect.getInstance().getConnection();
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getInt("IDACCOUNT"), rs.getString("EMAIL")
                        , rs.getString("PASSWORD"), rs.getString("FULLNAME"), rs.getInt("ROLE"), rs.getString("birthday"));
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public void updatePassword(int userID, String newPassword) throws SQLException {
        PreparedStatement ps = connection.prepareStatement("UPDATE ACCOUNT SET PASSWORD = ? WHERE IDACCOUNT = ?");
        ps.setString(1, newPassword);
        ps.setInt(2, userID);
        ps.executeUpdate();
    }
}
