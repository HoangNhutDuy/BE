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
    DAO dao = DAO.getInstance();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Product> resultSearch;
        String txtSearch = request.getParameter("txtSearch");
        if(txtSearch!=null) {
            int index = 1;
            resultSearch = dao.search(txtSearch, index);
            System.out.println("txtSearch");
        }
        else {
            System.out.println("hahahahahha");
            resultSearch = (List<Product>) request.getSession().getAttribute("resultSearch");
            System.out.println(resultSearch.size());
        }
        System.out.println(resultSearch.size());
        request.getSession().setAttribute("resultSearch", resultSearch);
        request.setAttribute("result", resultSearch);
        request.getRequestDispatcher("/ResultSearch.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String txtSearch = request.getParameter("txtSearch");
//        final int index = 1;
//        int count = dao.count(txtSearch);
//        final int pageSize = 6;
//        int end = count / pageSize;
//        if (count % pageSize != 0) {
//            end++;
//        }
//
//        List<Product> products = dao.search(txtSearch, index);
//        request.setAttribute("result", products);
//        request.setAttribute("end", end);
//        request.setAttribute("save", txtSearch);
//        request.getRequestDispatcher("/ResultSearch.jsp").forward(request, response);

    }
}
