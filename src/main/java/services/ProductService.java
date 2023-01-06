package services;

import Model.Product;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductService extends Services{
    public static Product findProduct(String id) throws SQLException {
        Product product = null;
        PreparedStatement ps = dao.getPrepareStatement("select * from product where IDPRODUCT = ?");
        ps.setString(1,id);
        ResultSet rs = ps.executeQuery();
        if(rs.next()){
            //String id, String name, String img, long price, String description, String nameCate)
            product = new Product(rs.getString("IDPRODUCT")
                    ,rs.getString("NAME_PRODUCT")
                    ,rs.getString("PRODUCT_IMG")
                    ,rs.getLong("PRICE")
                   ,rs.getString("DESCRIPTION")
                    ,rs.getString("NAMECATE"),rs.getString("IDCATE"));
        }
        return product;
    }
    public static List<String> getAllIDProducts() throws SQLException {
        List<String> list = new ArrayList<>();
        PreparedStatement ps = dao.getPrepareStatement("select idproduct from product");
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
            list.add(rs.getString("idproduct"));
        }
        return list;
    }

    public static void main(String[] args) throws SQLException {
        System.out.println(ProductService.getAllIDProducts());
    }
}
