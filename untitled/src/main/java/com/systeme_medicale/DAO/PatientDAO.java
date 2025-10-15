package com.systeme_medicale.DAO;

import com.systeme_medicale.Entities.Patient;
import com.systeme_medicale.Utilitaire.JpaUtil;
import jakarta.persistence.EntityManager;
import java.util.List;

public class PatientDAO {

    public void savePatient(Patient patient) {
        EntityManager em = JpaUtil.getEntityManager();
        try {
            em.getTransaction().begin();
            em.persist(patient);
            em.getTransaction().commit();
            System.out.println("✅ Patient ajouté avec succès !");
        } catch (Exception e) {
            if (em.getTransaction().isActive()) {
                em.getTransaction().rollback();
            }
            e.printStackTrace();
        } finally {
            em.close();
        }
    }

    public static List<Patient> getAllPatients() {
        EntityManager em = JpaUtil.getEntityManager();
        try {
            // Utilisation de LEFT JOIN FETCH pour charger les signes en une seule requête
            List<Patient> patients = em.createQuery(
                    "SELECT DISTINCT p FROM Patient p LEFT JOIN FETCH p.signes",
                    Patient.class
            ).getResultList();
            return patients;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            em.close();
        }
    }
}