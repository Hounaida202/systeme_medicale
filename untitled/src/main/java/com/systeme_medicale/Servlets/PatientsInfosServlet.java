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

@WebServlet("/getPatients")
public class PatientsInfosServlet extends HttpServlet {

    private PatientService patientService = new PatientService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("=== SERVLET GETPATIENTS APPELÉE ===");

        List<Patient> patients = patientService.getAllPatients();

        if (patients != null) {
            System.out.println("Patients envoyés au JSP: " + patients.size());
        } else {
            System.out.println("Liste de patients est null");
        }

        // on envoie la liste au JSP
        request.setAttribute("patients", patients);
        request.getRequestDispatcher("PatientList.jsp").forward(request, response);
    }
}