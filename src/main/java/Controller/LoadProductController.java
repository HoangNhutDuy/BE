package Controller;

import DAO.DAO;
import Model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoadProductControl", value = "/loadProducts")
public class LoadProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cateID = request.getParameter("cateID");
        List<Product> products = cateID == null ? (List<Product>) request.getSession().getAttribute("cateList")
                : DAO.getInstance().getProductbyCategory(cateID);

        request.getSession().setAttribute("cateList",products);
        request.setAttribute("listP", products);
        request.getRequestDispatcher("image-gallery.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
