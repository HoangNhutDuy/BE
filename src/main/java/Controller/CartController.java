package Controller;

import Model.Cart;
import Model.Product;
import Model.User;
import services.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Collection;
import java.util.List;

@WebServlet(name = "CartController", value = "/CartController")
public class CartController extends HttpServlet {
    Cart cart = Cart.getInstance();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String action = request.getParameter("action");
        String productID = request.getParameter("productID");
        String page = request.getParameter("page");
        User user = (User)session.getAttribute("user");

        if(user == null){
            response.sendRedirect("login.jsp");
            return;
        }

        if ("remove".equals(action)) {
            cart.removeFromCart(productID);
            updateCart(request,response);
        }
        else if (action.equals("add")) {
            try {
                Product product = ProductService.findProduct(productID);
                if (product != null){ cart.addToCart(product);}

                if("gallery".equals(page) || "detail".equals(page)){
                    request.getRequestDispatcher("/LoadProductControl").forward(request,response);
                }
                else if("resultSearch".equals(page)){
                    request.getRequestDispatcher("/SearchControl").forward(request,response);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }

        } else if (action.equals("show")) {
            updateCart(request,response);
        }


    }

    private void updateCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Collection list = (Collection) cart.getProductList();
        session.setAttribute("productList", list);
        session.setAttribute("cart", cart);
        request.getRequestDispatcher("shopping-cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
