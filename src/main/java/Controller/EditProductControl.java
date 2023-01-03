package Controller;

import DAO.DAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditProductControl", value = "/EditProductControl")
public class EditProductControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idProduct = request.getParameter("idProduct");
        String nameProduct = request.getParameter("nameProduct");
        String idCategory = request.getParameter("idCategory");
        String nameCategory = request.getParameter("nameCategory");
        String imgProduct = request.getParameter("imgProduct");
        String priceString = request.getParameter("price");
        double price = Double.parseDouble(priceString);
        String descProduct = request.getParameter("descProduct");
        DAO dao = DAO.getInstance();
        dao.editProduct(nameProduct,nameCategory,imgProduct,price,descProduct,idProduct);
        response.sendRedirect("AdminControl");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
