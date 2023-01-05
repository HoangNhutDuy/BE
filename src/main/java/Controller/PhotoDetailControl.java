package Controller;

import DAO.DAO;
import Model.Cart;
import Model.Category;
import Model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PhotoDetailControl", value = "/PhotoDetailControl")
public class PhotoDetailControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("productID");
        DAO dao = DAO.getInstance();
        List<Category> categories = dao.loadCategory();
        Product product = dao.getProductbyId(id);

        request.setAttribute("product", product);
        request.setAttribute("categories", categories);

        String page =  request.getParameter("page");
        if ("detail".equals(page)) {
            request.getRequestDispatcher("photo-detail.jsp").forward(request, response);
        } else if ("resultSearch".equals(page)) {
            request.getRequestDispatcher("ResultSearch.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("image-gallery.jsp").forward(request, response);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
