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

        User user = UserService.findUser(email, password);
        if (user != null) {
            if (user.getRole() == 0) {
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                session.setAttribute("cart", Cart.getInstance());
                response.sendRedirect("/home");
            } else {
                request.getRequestDispatcher("admin/admin.jsp").forward(request, response);
            }

        } else {
            request.setAttribute("message", "Sai tài khoản hoặc mật khẩu");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
