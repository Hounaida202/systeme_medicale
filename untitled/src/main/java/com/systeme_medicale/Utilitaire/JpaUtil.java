package com.systeme_medicale.Utilitaire;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class JpaUtil {

    private static final EntityManagerFactory emf =
            Persistence.createEntityManagerFactory("systeme_medicale");

    public static EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
}
