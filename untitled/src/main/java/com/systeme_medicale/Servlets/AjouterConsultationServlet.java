package com.systeme_medicale.Servlets;

import com.systeme_medicale.Services.ConsultationService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ajouterConsultationServlet")
public class AjouterConsultationServlet extends HttpServlet {

    private ConsultationService consultationService = new ConsultationService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Long patientId = Long.parseLong(request.getParameter("patientId"));
        String motif = request.getParameter("motif");
        String observation = request.getParameter("observation");

        consultationService.ajouterConsultation(patientId, motif, observation);

        response.sendRedirect("medecin.jsp");
    }
}
