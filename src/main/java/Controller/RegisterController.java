package Controller;

import DAO.DAO;
import services.Checking;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "RegisterController", value = "/register")
public class RegisterController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String fullName = request.getParameter("full-name");
//        if(fullName.length() < 10){
//            request.setAttribute("fullName","your full name is too short!");
//            request.getRequestDispatcher("register.jsp").forward(request,response);
//        }

        String email = request.getParameter("your-email");
        try {
            if(Checking.emailExist(email))
                request.getRequestDispatcher("register.jsp").forward(request, response);

            else {
                String fullName = request.getParameter("full-name");
                String password = request.getParameter("password");
                DAO.getInstance().addAccount(email,password,fullName);
                response.sendRedirect("index.jsp");
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
