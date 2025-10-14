package com.systeme_medicale.DAO;

import com.systeme_medicale.Entities.User;
import com.systeme_medicale.Utilitaire.JpaUtil;
import jakarta.persistence.EntityManager;
import jakarta.persistence.NoResultException;
import jakarta.persistence.TypedQuery;

public class UserDAO {

    public void saveUser(User user){
        EntityManager em = JpaUtil.getEntityManager();
        em.getTransaction().begin();
        em.persist(user);
        System.out.println("Utilisateur sauvegardé: " + user.getEmail()); // Debug

        em.getTransaction().commit();
        em.close();
    }

    public User findemail(String email){
        EntityManager em = JpaUtil.getEntityManager();
        User user = null;
        try {
            TypedQuery<User> query = em.createQuery("SELECT u FROM User u WHERE u.email = :email", User.class);
            query.setParameter("email", email);
            user = query.getSingleResult();
        } catch (NoResultException e) {
            System.out.println("Aucun utilisateur trouvé pour l'email : " + email);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            em.close();
        }
        return user;
    }


}
