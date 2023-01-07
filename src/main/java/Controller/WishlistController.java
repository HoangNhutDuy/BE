package Controller;

import Model.Product;
import Model.User;
import Model.Wishlist;
import services.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "WishlistController", value = "/wishlist")
public class WishlistController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if ((User) request.getSession().getAttribute("user") != null) {
            Wishlist list = (Wishlist) request.getSession().getAttribute("wishlist");
            request.setAttribute("wishlist",list.getProductList());
            String action = request.getParameter("action");
            String page = request.getParameter("page");
            if ("add".equals(action)) {
                String productID = request.getParameter("productID");
                try {
                    Product product = ProductService.findProduct(productID);
                    list.addToWishList(product);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                if ("gallery".equals(page))
                    request.getRequestDispatcher("/loadProducts").forward(request, response);
                else
                    request.getRequestDispatcher("/search").forward(request, response);

            } else {
                request.getRequestDispatcher("wishlist.jsp").forward(request, response);
            }


        } else
            response.sendRedirect("/login");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
