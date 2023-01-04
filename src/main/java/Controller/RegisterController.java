package Controller;

import DAO.DAO;
import org.jetbrains.annotations.NotNull;
import services.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "RegisterController", value = "/registerControl")
public class RegisterController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(@NotNull HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("your-email");
        try {
            if (UserService.emailExists(email)) {
                request.setAttribute("message", "Email đã tồn tại");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            } else {
                String fullName = request.getParameter("full-name");
                String password = request.getParameter("password");
                DAO.getInstance().addAccount(email, password, fullName);
                response.sendRedirect("index.jsp");
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
