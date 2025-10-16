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

@WebServlet("/getPatients")
public class PatientsInfosServlet extends HttpServlet {

    private PatientService patientService = new PatientService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("=== SERVLET GETPATIENTS APPELÉE ===");

        List<Patient> allPatients = patientService.getAllPatients();
        List<Patient> filteredPatients = new ArrayList<>();

        // Récupérer le paramètre de recherche
        String searchTerm = request.getParameter("search");

        // Filtrer les patients si un terme de recherche est fourni
        if (searchTerm != null && !searchTerm.trim().isEmpty()) {
            String searchLower = searchTerm.toLowerCase().trim();

            for (Patient patient : allPatients) {
                if (matchesSearch(patient, searchLower)) {
                    filteredPatients.add(patient);
                }
            }

            System.out.println("Recherche: '" + searchTerm + "' - " + filteredPatients.size() + " patients trouvés");
            request.setAttribute("patients", filteredPatients);
        } else {
            // Pas de recherche, afficher tous les patients
            System.out.println("Aucune recherche - " + allPatients.size() + " patients affichés");
            request.setAttribute("patients", allPatients);
        }

        request.getRequestDispatcher("PatientList.jsp").forward(request, response);
    }

    private boolean matchesSearch(Patient patient, String searchTerm) {
        if (searchTerm == null || searchTerm.isEmpty()) {
            return true;
        }

        // Rechercher dans tous les champs
        return (patient.getNom() != null && patient.getNom().toLowerCase().contains(searchTerm)) ||
                (patient.getPrenom() != null && patient.getPrenom().toLowerCase().contains(searchTerm)) ||
                (patient.getNumeroSecuriteSociale() != null && patient.getNumeroSecuriteSociale().toLowerCase().contains(searchTerm)) ||
                (patient.getTelephone() != null && patient.getTelephone().toLowerCase().contains(searchTerm)) ||
                (patient.getAdresse() != null && patient.getAdresse().toLowerCase().contains(searchTerm)) ||
                (patient.getDateNaissance() != null && patient.getDateNaissance().toLowerCase().contains(searchTerm));
    }
}