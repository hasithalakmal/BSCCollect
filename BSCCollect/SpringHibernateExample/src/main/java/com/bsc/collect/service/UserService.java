/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.service;

import com.bsc.collect.model.User;
import java.util.List;

/**
 *
 * @author Hasitha
 */
public interface UserService {

    User findById(String user_id);

    void saveUser(User user);

    void updateUser(User user);

    void deleteUserByuser_id(String user_id);

    List<User> findAllUser();

    User findUserByuser_id(String user_id);

    boolean isUseruser_idUnique(String user_id);
    
    boolean isValidUser(User user);
    
    void resetPassowrd(User user);
    
}
