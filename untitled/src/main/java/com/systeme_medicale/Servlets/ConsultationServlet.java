package com.systeme_medicale.Servlets;

import com.systeme_medicale.Entities.Patient;
import com.systeme_medicale.Services.PatientService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ConsultationServlet")
public class ConsultationServlet extends HttpServlet {
    private PatientService patientService = new PatientService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String patientIdParam = request.getParameter("patientId");

        if (patientIdParam != null) {
            try {
                Long patientId = Long.parseLong(patientIdParam);
                Patient patient = patientService.getPatientById(patientId);
                request.setAttribute("patient", patient);
            } catch (Exception e) {
                e.printStackTrace();
                request.setAttribute("error", "Patient non trouvé");
            }
        }

        request.getRequestDispatcher("consultationpage.jsp").forward(request, response);
    }
}