package Controller;

import DAO.DAO;
import Model.Category;
import Model.Product;
import Model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

    @WebServlet(name = "AdminControl", value = "/AdminControl")
public class AdminController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("user");
        System.out.println(u);
        if(u == null){
            response.sendRedirect("/login");
        }
        else if(u != null && u.getRole() == 0){
            response.sendRedirect("/home");
        }
        else{
            System.out.println("haha");
            DAO dao = DAO.getInstance();
            List<Product> products = dao.getAllProduct();
            List<Category> categories = dao.loadCategory();
            List<User> users = dao.getAllUser();
            request.setAttribute("products",products);
            request.setAttribute("categories",categories);
            request.setAttribute("users",users);
            request.setAttribute("user",u);
            request.getRequestDispatcher("admin/admin.jsp").forward(request,response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
