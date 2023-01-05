package Controller;

import DAO.DAO;
import Model.Email;
import Model.User;
import Properties.EmailProperties;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ForgotPasswordServlet", value = "/ForgotPasswordServlet")
public class ForgotPasswordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String username = request.getParameter("email");

            DAO dao = DAO.getInstance();

            User user = dao.findByEmail(username);

            if (user == null) {
                request.setAttribute("error", "Username is empty");
            }else {
                Email email = new Email();
                email.setFrom("minhcanh9105@gmail.com");
                email.setFromPassword("qnekpxwrfvjxshda");
                email.setTo(username);
                email.setSubject("Forgot password");
                StringBuilder sb = new StringBuilder();

                sb.append("Dear ").append(username).append("<br>");
                sb.append("you are forgot password. <br>");
                sb.append("your password is <br>").append(user.getPassword()).append("<br>");
                sb.append("Regard <br>");
                sb.append("administrator");
                email.setContent(sb.toString());
                EmailProperties.send(email);
                request.setAttribute("message", "Email send to the email Address." + "Please check and get your password");
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error",e.getMessage());
        }
    }
}
