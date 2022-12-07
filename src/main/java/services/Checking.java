package services;
import DAO.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Checking {
    private static DAO dao = DAO.getInstance();

    public static boolean emailExist(String email) throws SQLException {
        try{
            String query = "select email from accounts where email = ? ";
            PreparedStatement ps = dao.getPrepareStatement(query);
            ps.setString(1,email);
            ResultSet rs = ps.executeQuery();
            boolean res = rs.next();
            rs.close();
            ps.close();
            return res;
        }catch (SQLException e){
            e.printStackTrace();
            return false;
        }

    }


}
