package com.systeme_medicale.Servlets;

import com.systeme_medicale.Entities.User;
import com.systeme_medicale.Services.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private UserService userService = new UserService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = userService.login(email, password);

        if (user != null) {
            // Créer une session pour l'utilisateur
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            session.setAttribute("role", user.getRole());
            session.setAttribute("firstname", user.getFirstName());

            String role = user.getRole();

            if ("infirmier".equalsIgnoreCase(role)) {
                response.sendRedirect("infermiere.jsp");
            } else if ("medecin_general".equalsIgnoreCase(role)) {
                response.sendRedirect("FileDattente2Servlet");
            }else if ("admin".equalsIgnoreCase(role)) {
                response.sendRedirect("Dashbaord.jsp");
            } else {
                request.setAttribute("errorMessage", "Rôle utilisateur non reconnu !");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }

        } else {
            request.setAttribute("errorMessage", "Email ou mot de passe incorrect !");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }
}