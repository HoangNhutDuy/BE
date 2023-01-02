package Controller;

import DAO.DAO;
import Model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "LoadProductControl", value = "/LoadProductControl")
public class LoadProductControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products = new ArrayList<>();
        DAO dao = DAO.getInstance();
        String id = request.getParameter("id");
        products = dao.getProductbyCategory(id);
        request.setAttribute("listP", products);
        request.getRequestDispatcher("image-gallery.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
