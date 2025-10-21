package com.systeme_medicale.Services;

import com.systeme_medicale.DAO.UserDAO;
import com.systeme_medicale.Entities.User;
import org.mindrot.jbcrypt.BCrypt;

public class UserService {
    UserDAO userDAO = new UserDAO();

    public boolean signup(String firstname, String lastname, String email, String password, String role) {
        if (userDAO.findemail(email) != null) {
            return false;
        } else {
            String hashed = BCrypt.hashpw(password, BCrypt.gensalt(12));
            User user = new User(firstname, lastname, email, hashed, role);
            userDAO.saveUser(user);
            return true;
        }
    }


    public User login(String email, String plainPassword) {
        User user = userDAO.findemail(email);
        if (user == null) return null;
        String storedHash = user.getPassword();
        if (BCrypt.checkpw(plainPassword, storedHash)) {
            return user;
        } else {
            return null;
        }
    }





}