package com.systeme_medicale.Servlets;

import com.systeme_medicale.Entities.Patient;
import com.systeme_medicale.Services.PatientService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
@WebServlet("/FileDattente2Servlet")
public class FileDattente2Servlet extends HttpServlet {

    private PatientService patientService = new PatientService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("=== SERVLET: Début doGet ===");

        try {
            List<Patient> allPatients = patientService.getAttentePatients();

            System.out.println("SERVLET: Patients récupérés - " +
                    (allPatients != null ? allPatients.size() : "null"));
            if (allPatients == null) {
                allPatients = new ArrayList<>();
//                System.out.println("SERVLET: Liste convertie de null à liste vide");
            }

            request.setAttribute("patients", allPatients);

        } catch (Exception e) {
            System.err.println("SERVLET: Erreur inattendue:");
//            e.printStackTrace();
//            request.setAttribute("patients", new ArrayList<>());
//            request.setAttribute("error", "Erreur technique: " + e.getMessage());
        }
        request.getRequestDispatcher("medecin.jsp").forward(request, response);
    }
}