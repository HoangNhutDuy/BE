package Controller;

import DAO.DAO;
import Model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoadProductbyID", value = "/LoadProductbyID")
public class LoadProductbyIDController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DAO dao = DAO.getInstance();
        String id = request.getParameter("id");
        Product product = dao.getProductbyId(id);
        request.setAttribute("product",product);
        request.getRequestDispatcher("admin/editProduct.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
