package Controller;

import DAO.DAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditCategoryControl", value = "/EditCategoryControl")
public class EditCategoryControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("idCate");
        String name = request.getParameter("nameCate");
        String imgCate = request.getParameter("imgCate");
        String desc = request.getParameter("descCate");
        DAO dao = DAO.getInstance();
        dao.editCategory(id,name,imgCate,desc);
        request.setAttribute("message","Cập nhật thành công");
        request.getRequestDispatcher("AdminControl").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
