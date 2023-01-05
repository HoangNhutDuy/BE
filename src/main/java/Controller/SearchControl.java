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

    private static final int PAGE_SIZE = 6;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DAO dao = DAO.getInstance();
        HttpSession session = request.getSession();
        String sessionTxtSearch = (String) session.getAttribute("txtSearch");
        String txtSearch =  request.getParameter("txtSearch")== null ? sessionTxtSearch: request.getParameter("txtSearch");
        String sessionIndex = (String) session.getAttribute("index");
        String paramIndex =  request.getParameter("index") == null ?  sessionIndex: request.getParameter("index");

        int index = Integer.parseInt(paramIndex);
        System.out.println(txtSearch);
        int count = dao.count(txtSearch);

        int end = count / PAGE_SIZE;
        if (count % PAGE_SIZE != 0) {
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
