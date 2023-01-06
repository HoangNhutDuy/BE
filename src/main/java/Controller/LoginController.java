package Controller;

import Model.Cart;
import Model.User;
import services.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "LoginControl", value = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();

        User user = UserService.findUser(email, password);
        if (user != null) {
            session.setAttribute("user", user);
            session.setAttribute("cart", Cart.getInstance());
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
}
