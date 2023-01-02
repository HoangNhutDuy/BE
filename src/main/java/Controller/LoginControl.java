package Controller;

import DAO.DAO;
import Model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginControl", value = "/LoginControl")
public class LoginControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        DAO dao = DAO.getInstance();
        User user = dao.checkLogin(username,password);
        if(user == null){
            response.sendRedirect("login.jsp");
        } else{
            HttpSession session = request.getSession();
            session.setAttribute("user",user);
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }
    }
}
