package Controller;

import DAO.DAO;
import Model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = "/SearchControl")
public class SearchControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String txtSearch = request.getParameter("txtSearch");
        int index = Integer.parseInt(request.getParameter("index"));
        DAO dao = DAO.getInstance();
        int count = dao.count(txtSearch);
        final int pageSize = 6;
        int end = count/pageSize;
        if(count % pageSize != 0){
            end++;
        }

        List<Product> products = dao.search(txtSearch,index);
        request.setAttribute("result",products);
        request.setAttribute("end",end);
        request.setAttribute("save",txtSearch);
        request.getRequestDispatcher("/ResultSearch.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String txtSearch = request.getParameter("txtSearch");
        final int index = 1;
        DAO dao = DAO.getInstance();
        int count = dao.count(txtSearch);
        final int pageSize = 6;
        int end = count/pageSize;
        if(count % pageSize != 0){
            end++;
        }

        List<Product> products = dao.search(txtSearch,index);
        request.setAttribute("result",products);
        request.setAttribute("end",end);
        request.setAttribute("save",txtSearch);
        request.getRequestDispatcher("/ResultSearch.jsp").forward(request,response);

    }
}
