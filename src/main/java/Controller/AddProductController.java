package Controller;

import DAO.DAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "AddProductControl", value = "/AddProductControl")
public class AddProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idProduct = request.getParameter("idProduct");
        String nameProduct = request.getParameter("nameProduct");
        String nameCategory = request.getParameter("nameCategory");
        String idCategory = null;
        try {
            idCategory = DAO.getInstance().getCategoryID(nameCategory);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        String imgProduct = request.getParameter("imgProduct");
        String priceString = request.getParameter("price");
        double price = Double.parseDouble(priceString);
        String descProduct = request.getParameter("descProduct");
        DAO dao = DAO.getInstance();
        dao.addProduct(idProduct,nameProduct,idCategory,nameCategory,imgProduct,price,descProduct);
        request.setAttribute("message","Thêm thành công");

        request.getRequestDispatcher("AdminControl").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
