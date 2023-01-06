package Controller;

import DAO.DAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditProductControl", value = "/EditProductControl")
public class EditProductController extends HttpServlet {
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
        request.setAttribute("message","Cập nhật thành công");
        request.getRequestDispatcher("AdminControl").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
