package Controller;

import Model.Cart;
import Model.User;
import Model.Wishlist;
import services.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "LoginControl", value = "/login")
public class LoginController extends HttpServlet {
    private HttpSession session;

    private User user;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        session = request.getSession();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        user = UserService.findUser(email, password);
        if (user != null) {
            initAll();
            if (user.getRole() == 0) {
                response.sendRedirect("/home");
            } else {
                response.sendRedirect("/AdminControl");
            }

        } else {
            request.setAttribute("message", "Sai tài khoản hoặc mật khẩu");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    public void initAll() {
        initUser();
        initCart();
        initWishlist();
    }

    private void initWishlist() {
        session.setAttribute("wishlist", Wishlist.getInstance());
    }

    private void initCart() {
        session.setAttribute("cart", Cart.getInstance());
    }

    private void initUser() {
        session.setAttribute("user", user);
    }

}
