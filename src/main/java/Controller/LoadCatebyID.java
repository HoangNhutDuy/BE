package Controller;

import DAO.DAO;
import Model.Category;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoadCatebyID", value = "/LoadCatebyID")
public class LoadCatebyID extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DAO dao = DAO.getInstance();
        String id = request.getParameter("id");
        Category category = dao.getCategorybyID(id);
        request.setAttribute("cate",category);
        request.getRequestDispatcher("admin/editCategory.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
