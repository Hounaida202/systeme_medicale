package com.systeme_medicale.Services;

import com.systeme_medicale.DAO.UserDAO;
import com.systeme_medicale.Entities.User;

public class UserService {
    UserDAO userDAO = new UserDAO();

    public boolean signup(String firstname,String lastname,String email,String password , String role){
        if(userDAO.findemail(email)!=null){
            return false;
        }else {
            User user = new User(firstname,lastname,email,password,role);
            userDAO.saveUser(user);
            return true;

        }
    }


    public User login(String email, String password) {
        System.out.println("=== TENTATIVE DE CONNEXION ===");
        System.out.println("Email reçu: '" + email + "'");
        System.out.println("Password reçu: '" + password + "'");

        User user = userDAO.findemail(email);

        if (user == null) {
            System.out.println("❌ AUCUN utilisateur trouvé pour cet email");
            return null;
        }

        System.out.println("✅ Utilisateur trouvé en base:");
        System.out.println("   - Email: " + user.getEmail());
        System.out.println("   - Password en base: '" + user.getPassword() + "'");
        System.out.println("   - Role: " + user.getRole());

        // Comparaison détaillée
        boolean passwordMatch = user.getPassword().equals(password);
        System.out.println("🔍 Comparaison mot de passe:");
        System.out.println("   - MDP base: '" + user.getPassword() + "'");
        System.out.println("   - MDP fourni: '" + password + "'");
        System.out.println("   - Correspondance: " + passwordMatch);

        if (passwordMatch) {
            System.out.println("✅ CONNEXION RÉUSSIE");
            return user;
        } else {
            System.out.println("❌ MOT DE PASSE INCORRECT");
            return null;
        }
    }





}


