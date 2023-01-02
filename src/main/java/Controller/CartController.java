package Controller;

import Model.Cart;
import Model.Product;
import services.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Collection;

@WebServlet(name = "CartController", value = "/CartController")
public class CartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = Cart.getInstance();
        String action = request.getParameter("action");
        String id = request.getParameter("id");
        if (action == null) {
        } else if (action.equals("add")) {
            try {
                Product product = ProductService.findProduct(id);
                if (product != null) cart.addToCart(product);
                System.out.println(cart.getQuantity());
                request.getRequestDispatcher("ResultSearch.jsp").forward(request,response);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }


        } else if (action.equals("show")) {
            Collection list = (Collection) cart.getProductList();
            session.setAttribute("productList", list);
            session.setAttribute("cart", cart);
            request.getRequestDispatcher("shopping-cart.jsp").forward(request, response);
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
