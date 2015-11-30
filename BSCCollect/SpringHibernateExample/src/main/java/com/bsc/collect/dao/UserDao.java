/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.dao;

import com.bsc.collect.model.User;
import java.util.List;

/**
 *
 * @author Hasitha
 */
public interface UserDao {

    User findById(String user_id);

    void saveUser(User user);

    void deleteUserBySsn(String user_id);

    List<User> findAllUsers();

    User findUserByuser_id(String user_id);
    
    boolean isValidLogin();
}
