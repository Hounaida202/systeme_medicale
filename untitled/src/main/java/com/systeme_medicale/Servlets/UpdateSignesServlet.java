package com.systeme_medicale.Servlets;

import com.systeme_medicale.DAO.PatientDAO;
import com.systeme_medicale.Entities.Patient;
import com.systeme_medicale.Services.PatientService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/updateSignesServlet")
public class UpdateSignesServlet extends HttpServlet {

    private PatientService patientService = new PatientService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Long id = Long.parseLong(request.getParameter("patientId"));
        String temperature = request.getParameter("temperature");
        String tension = request.getParameter("tension");
        String pouls = request.getParameter("pouls");

        System.out.println("temperature: " + temperature);

        // ✅ 1. Mise à jour du patient et de ses signes
        patientService.updatePatientAndSignes(id, temperature, tension, pouls);

        // ✅ 2. Recharger la liste à jour
        List<Patient> patients = PatientDAO.getAllPatients();
        request.setAttribute("patients", patients);

        // ✅ 3. Revenir à la même JSP via forward (pas redirect)
        request.getRequestDispatcher("PatientList.jsp").forward(request, response);
    }

}
