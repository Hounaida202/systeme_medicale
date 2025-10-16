package com.systeme_medicale.Servlets;

import com.systeme_medicale.Services.PatientService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ajouterPatient")
public class PatientServlet extends HttpServlet {
    private PatientService patientService = new PatientService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String dateNaissance = request.getParameter("dateNaissance");
            String num_securite_sociale = request.getParameter("num_securite_sociale");
            String tele = request.getParameter("tele");
            String adresse = request.getParameter("adresse");


            String temperature = request.getParameter("temperature");
            String tension = request.getParameter("tension");
            String pouls = request.getParameter("pouls");

            System.out.println("=== DONNÉES REÇUES ===");
            System.out.println("Nom: " + nom);
            System.out.println("Prénom: " + prenom);
            System.out.println("Date Naissance: " + dateNaissance);
            System.out.println("Num Secu: " + num_securite_sociale);
            System.out.println("Téléphone: " + tele);
            System.out.println("Adresse: " + adresse);
            System.out.println("Température: " + temperature);
            System.out.println("Tension: " + tension);
            System.out.println("Pouls: " + pouls);

            if (nom == null || nom.trim().isEmpty() ||
                    prenom == null || prenom.trim().isEmpty() ||
                    num_securite_sociale == null || num_securite_sociale.trim().isEmpty()) {

                request.setAttribute("errorMessage", "Veuillez remplir tous les champs obligatoires");
                request.getRequestDispatcher("votreFormulaire.jsp").forward(request, response);
                return;
            }

            patientService.ajouterPatientAvecSignes(
                    nom, prenom, dateNaissance, num_securite_sociale, tele, adresse,
                    temperature, tension, pouls
            );

            request.setAttribute("message", "✅ Patient ajouté avec succès !");

            request.getRequestDispatcher("infermiere.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Erreur lors de l'ajout du patient: " + e.getMessage());
            request.getRequestDispatcher("infermiere.jsp").forward(request, response);
        }
    }
}