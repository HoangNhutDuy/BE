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
        doPost(request,response);
//        HttpSession session = request.getSession();
//        String sessionTxtSearch = (String) session.getAttribute("txtSearch");
//        String txtSearch = sessionTxtSearch == null ? request.getParameter("txtSearch") : sessionTxtSearch;
//        String sessionIndex = (String) session.getAttribute("index");
////        String paramIndex = sessionIndex == null ? request.getParameter("index") : sessionIndex;
////        int index = Integer.parseInt(paramIndex);
//        int index = 1;
//        System.out.println(sessionTxtSearch);
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
//        request.getSession().setAttribute("index", sessionIndex);
//        request.getSession().setAttribute("txtSearch", sessionTxtSearch);
//
//
//        request.getRequestDispatcher("/ResultSearch.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String sessionTxtSearch = (String) session.getAttribute("txtSearch");
        String txtSearch =  request.getParameter("txtSearch")== null ? sessionTxtSearch: request.getParameter("txtSearch");
        String sessionIndex = (String) session.getAttribute("index");
        String paramIndex =  request.getParameter("index")== null ?  sessionIndex: request.getParameter("index");

        int index = Integer.parseInt(paramIndex);
        System.out.println(txtSearch);
        int count = dao.count(txtSearch);
        final int pageSize = 6;
        int end = count / pageSize;
        if (count % pageSize != 0) {
            end++;
        }

        List<Product> products = dao.search(txtSearch, index);
        request.setAttribute("result", products);
        request.setAttribute("end", end);
        request.setAttribute("save", txtSearch);

        request.getSession().setAttribute("index", paramIndex);
        request.getSession().setAttribute("txtSearch", txtSearch);

        request.getRequestDispatcher("/ResultSearch.jsp").forward(request, response);

    }
}
