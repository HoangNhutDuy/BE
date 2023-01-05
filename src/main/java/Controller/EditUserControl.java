package Controller;

import DAO.DAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditUserControl", value = "/EditUserControl")
public class EditUserControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int role = 0;
        String idAccount = request.getParameter("idAccount");
        int id = Integer.parseInt(idAccount);
        String fullName = request.getParameter("fullName");
        String Email = request.getParameter("Email");
        String password =request.getParameter("password");
        String roleString = request.getParameter("role");
        if("Quản lý".equalsIgnoreCase(roleString)){
            role = 1;
        }
        DAO dao = DAO.getInstance();
        dao.editUserbyId(id,fullName,Email,password,role);
        request.setAttribute("message","Cập nhật thành công");
        request.getRequestDispatcher("AdminControl").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
