package Controller;

import DAO.DAO;
import services.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "AddAccountControl", value = "/AddAccountControl")
public class AddAccountControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {

            int role = 0;
            String idAccount = request.getParameter("idAccount");
            String fullName = request.getParameter("fullName");
            String Email = request.getParameter("Email");
            String password =request.getParameter("password");
            String roleString = request.getParameter("role");
            if("Quản lý".equalsIgnoreCase(roleString)){
                role = 1;
            }
            if(!UserService.emailExists(Email)){
                DAO dao = DAO.getInstance();
                dao.addAccountforAdmin(Email,password,fullName,role);
                response.sendRedirect("AdminControl");
            }
            else{
                request.setAttribute("message","Không hợp lệ");
                request.getRequestDispatcher("AdminControl").forward(request,response);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
