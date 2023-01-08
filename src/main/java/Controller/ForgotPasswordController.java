package Controller;

import DAO.DAO;
import Model.Email;
import Model.User;
import Properties.EmailProperties;
import services.RandomTextService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ForgotPasswordServlet", value = "/forgotPassword")
public class ForgotPasswordController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String username = request.getParameter("email");
            DAO dao = DAO.getInstance();
            User user = dao.findByEmail(username);

            if (user == null) {
                System.out.println(1);
                request.setAttribute("error", "không tìm thấy email");
                request.getRequestDispatcher("forgot-password.jsp").forward(request,response);
            } else {
                String newPassword  = RandomTextService.nextRandomPassword();
                dao.updatePassword(user.getId(),newPassword);
                Email email = new Email();
                email.setFrom("minhcanh9105@gmail.com");
                email.setFromPassword("qnekpxwrfvjxshda");
                email.setTo(username);
                email.setSubject("Forgot password");
                StringBuilder sb = new StringBuilder();

                sb.append("Dear ").append(username).append("<br>");
                sb.append("you are forgot password. <br>");
                sb.append("your password is <br>").append(newPassword).append("<br>");
                sb.append("Nguyen Ho Minh Canh <br>");
                sb.append("Administrator");
                email.setContent(sb.toString());
                EmailProperties.send(email);
                request.setAttribute("message", "Email send to the email Address." + "Please check and get your password");
                request.getRequestDispatcher("notification.jsp").forward(request,response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", e.getMessage());
        }
    }
}
