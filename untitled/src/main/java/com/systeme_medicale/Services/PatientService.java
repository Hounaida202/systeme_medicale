package com.systeme_medicale.Services;

import com.systeme_medicale.DAO.PatientDAO;
import com.systeme_medicale.Entities.Patient;
import com.systeme_medicale.Entities.Signe;
import java.util.List;

public class PatientService {
    private PatientDAO patientDAO = new PatientDAO();

    public void ajouterPatientAvecSignes(String nom, String prenom, String dateNaissance,
                                         String num_securite_sociale, String tele, String adresse,
                                         String temperature, String tension, String pouls) {

        System.out.println("=== CRÉATION PATIENT ===");

        Patient patient = new Patient(nom, prenom, dateNaissance, num_securite_sociale, tele, adresse);
        System.out.println("Patient créé: " + patient.getNom() + " " + patient.getPrenom());

        Signe signe = new Signe(temperature, tension, pouls, patient);
        System.out.println("Signes créés: " + temperature + " / " + tension + " / " + pouls);

        patient.setSignes(signe);

        patientDAO.savePatient(patient);
        System.out.println("Patient et signes sauvegardés !");
    }

    public List<Patient> getAllPatients() {
        List<Patient> patients = PatientDAO.getAllPatients();
        if (patients != null) {
            System.out.println("Nombre de patients récupérés: " + patients.size());
            for (Patient p : patients) {
                System.out.println("Patient: " + p.getNom() + " " + p.getPrenom());
                if (p.getSignes() != null) {
                    System.out.println("Signes: " + p.getSignes().getTemperature());
                } else {
                    System.out.println("Aucun signe pour ce patient");
                }
            }
        } else {
            System.out.println("Aucun patient récupéré");
        }
        return patients;
    }
}