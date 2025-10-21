package com.systeme_medicale;

import com.systeme_medicale.Entities.Patient;
import com.systeme_medicale.Utilitaire.JpaUtil;
import jakarta.persistence.EntityManager;

public class Main {
    public static void main(String[] args) {
        EntityManager em = JpaUtil.getEntityManager();
        em.getTransaction().begin();
        em.getTransaction().commit();
        em.close();
        System.out.println("Succes");
    }
}
