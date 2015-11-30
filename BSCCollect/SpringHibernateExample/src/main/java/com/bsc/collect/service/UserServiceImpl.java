/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.service;

import com.bsc.collect.dao.UserDao;
import com.bsc.collect.model.PasswordEncoder;
import com.bsc.collect.model.User;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Hasitha
 */
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao dao;

    public User findById(String user_id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void saveUser(User user) {
        dao.saveUser(user);
    }

    public void updateUser(User user) {
        User entity = dao.findUserByuser_id(user.getUser_id());
        if (entity != null) {
            
            entity.setDesignation(user.getDesignation());
            entity.setEmail(user.getEmail());
            entity.setPhone_number(user.getPhone_number());
            entity.setProvince_id(user.getProvince_id());
            entity.setUser_name(entity.getUser_name());
            entity.setUser_type(user.getUser_type());
            entity.setPwcounter(user.getPwcounter());
           // entity.setPassword(entity.getPassword());
        }
    }
    
   

    public void deleteUserByuser_id(String user_id) {
        dao.deleteUserBySsn(user_id);
    }

    public List<User> findAllUser() {
        return dao.findAllUsers();
    }

    public User findUserByuser_id(String user_id) {
        User u = (null);
       // System.out.println("massa");
        u = dao.findUserByuser_id(user_id);
     /*   if (u == null) {
            System.out.println("notexsit user");
        } else {
          //  System.out.println(u.toString());
           // System.out.println("adoooo");
        }*/

        return u;
    }

    public boolean isUseruser_idUnique(String user_id) {
        User user = findUserByuser_id(user_id);
        return (user == null || ((user_id != null) && (user.getUser_id() == user_id)));
    }

    public boolean isValidUser(User user) {
      //  System.out.println("working........");
        String userid = user.getUser_id();
        String password = user.getPassword();

        PasswordEncoder pe = new PasswordEncoder();

        String encodedpw = pe.Encode(password);
      //  System.out.println("massaaaaaaaaaaaaaaaaaaa");
        User dbuser = findUserByuser_id(userid);
      //  System.out.println("hasiiii");
        if (dbuser == null) {
           // System.out.println("hasiyoooo");
            return false;
        } else {
           // System.out.println("massooo");
            if (encodedpw.equals(dbuser.getPassword())) {

                return true;
            } else {
                return false;
            }
        }

    }

    public void resetPassowrd(User user) {
       User entity = dao.findUserByuser_id(user.getUser_id());
        if (entity != null) {
            
           
            entity.setPwcounter(user.getPwcounter());
            entity.setPassword(user.getPassword());
        }
    }

   
   

}
