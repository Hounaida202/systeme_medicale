package com.systeme_medicale.DAO;

import com.systeme_medicale.Entities.Patient;
import com.systeme_medicale.Entities.Signe;

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
            System.out.println("Patient ajouté avec succès !");
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
            List<Patient> patients = em.createQuery(
                    "SELECT DISTINCT p FROM Patient p LEFT JOIN FETCH p.signes WHERE p.status = 'desactive'",
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
    public static List<Patient> getAttentePatients() {
        EntityManager em = JpaUtil.getEntityManager();
        try {
            List<Patient> patients = em.createQuery(
                    "SELECT DISTINCT p FROM Patient p LEFT JOIN FETCH p.signes WHERE p.status = 'active'",
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

    public void updatePatientAndSignes(Long id, String temperature, String tension, String pouls) {
        EntityManager em = JpaUtil.getEntityManager();
            em.getTransaction().begin();
            Patient patient = em.find(Patient.class, id);
            if (patient != null) {
//                Signe signes = patient.getSignes();
                patient.setStatus("active");
            if (patient.getSignes()!=null){
                patient.getSignes().setTemperature(temperature);
                patient.getSignes().setTension(tension);
                patient.getSignes().setPouls(pouls);
            }
               }
                em.getTransaction().commit();
            em.close();
    }
}