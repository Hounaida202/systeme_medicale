package com.systeme_medicale.Servlets;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import com.systeme_medicale.Services.*;

@WebServlet("/ajouterCompte")
public class SignupServlet extends HttpServlet {
    private UserService userService = new UserService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");
        System.out.println("email"+email);

        if (userService.signup(firstname,lastname, email, password,role)) {
            request.getRequestDispatcher("Dashbaord.jsp").forward(request, response);
        } else {
            response.getWriter().println("Email deja utilise ");
        }
    }

}
