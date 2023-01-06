package Controller;

import DAO.DAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddCategoryControl", value = "/AddCategoryControl")
public class AddCategoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idCate = request.getParameter("idCate");
        String nameCate = request.getParameter("nameCate");
        String imgCate = request.getParameter("imgCate");
        String desc = request.getParameter("descCate");
        DAO dao = DAO.getInstance();
        dao.addCategory(idCate,nameCate,imgCate,desc);

        request.setAttribute("message","Thêm thành công");
        request.getRequestDispatcher("AdminControl").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
