package Controller;

import DAO.DAO;
import Model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoadUserbyID", value = "/LoadUserbyID")
public class LoadUserbyIDController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DAO dao = DAO.getInstance();
        int id = Integer.parseInt(request.getParameter("id"));
        User u = dao.getUserbyID(id);
        request.setAttribute("user",u);
        request.getRequestDispatcher("admin/editUser.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
