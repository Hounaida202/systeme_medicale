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

@WebServlet("/FileDattenteServlet")
public class FileDattenteServlet extends HttpServlet {

    private PatientService patientService = new PatientService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("get en attente patients");

        // 1️⃣ Récupérer la liste des patients en attente
        List<Patient> allPatients = patientService.getAttentePatients();

        // 2️⃣ Attacher la liste à la requête
        request.setAttribute("patients", allPatients);

        // 3️⃣ Rediriger vers la page JSP
        request.getRequestDispatcher("FileAttente.jsp").forward(request, response);
    }


}