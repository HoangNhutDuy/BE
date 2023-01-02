package Controller;

import DAO.DAO;
import Model.Category;
import Model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PhotoDetailControl", value = "/PhotoDetailControl")
public class PhotoDetailControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        DAO dao = DAO.getInstance();
        List<Category> categories = dao.loadCategory();
        Product product = dao.getProductbyId(id);
        request.setAttribute("product",product);
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("photo-detail.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
