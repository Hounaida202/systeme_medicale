package com.systeme_medicale.DAO;

import com.systeme_medicale.Entities.Consultation;
import com.systeme_medicale.Entities.Patient;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class GeneralisteDAO {

    private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("systeme_medicale");

    public void addConsultation(Long patientId, String motif, String observation) {
        EntityManager em = emf.createEntityManager();

        try {
            em.getTransaction().begin();

            Patient patient = em.find(Patient.class, patientId);
            if(patient != null) {
                Consultation consultation = new Consultation();
                consultation.setMotif(motif);
                consultation.setObservation(observation);
                consultation.setPatient(patient);
                patient.setConsultation(consultation);
                em.persist(consultation);
            }

            em.getTransaction().commit();
        } catch(Exception e) {
            e.printStackTrace();
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
    }
}
