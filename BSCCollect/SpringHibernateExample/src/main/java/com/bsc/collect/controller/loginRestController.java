/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.controller;

import com.bsc.collect.model.Login;
import com.bsc.collect.model.PasswordEncoder;
import com.bsc.collect.model.User;
import com.bsc.collect.service.EmailSendingService;
import com.bsc.collect.service.EmailSendingServiceImpl;
import com.bsc.collect.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Hasitha
 */
@RestController
public class loginRestController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/login/", method = RequestMethod.POST, consumes = "application/json")
    public String isValidUser(@RequestBody Login login) {
        //System.out.println(">>>>>>>>>>>>>>>>>>>>>" + login.toString());
        User u = userService.findUserByuser_id(login.getUsername());
        // System.out.println("massaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
        if (u == null) {
            String jason = "{'isvalid':'user id not exsit'}";
            return jason;
        } else {
            System.out.println("x = " + u.toString());
            User u2 = u;
            u2.setPassword(login.getPassword());
            boolean b = userService.isValidUser(u2);
            if (b == false) {
                if (u.getPwcounter() > 5) {
                    u.setPwcounter(u.getPwcounter() + 1);
                    userService.updateUser(u);
                    System.err.println(u.toString());
                    String jason = "{\"isvalid\":\"user is temperelly blocked\"}";
                    return jason;
                } else {
                    u.setPwcounter((u.getPwcounter() + 1));
                    userService.updateUser(u);
                    System.err.println(u.toString());
                    String jason = "{\"isvalid\":\"upassword is not correct\"}";
                    return jason;
                }

            } else {
                if (u.getPwcounter() > 5) {
                    u.setPwcounter(u.getPwcounter() + 1);
                    userService.updateUser(u);
                    System.err.println(u.toString());
                    String jason = "{\"isvalid\":\"user is temperelly blocked\"}";
                    return jason;
                } else {
                    u.setPwcounter(0);
                    userService.updateUser(u);
                    System.err.println(u.toString());
                    String jason = "{\"isvalid\":\"valid login\",\"type\":\""+u.getUser_type()+"\"}";
                    return jason;
                }
            }
        }
    }

    @RequestMapping(value = "/resetpw/", method = RequestMethod.POST, consumes = "application/json")
    public String reSetPassword(@RequestBody Login login) {
        //System.out.println(">>>>>>>>>>>>>>>>>>>>>" + login.toString());
        User user = userService.findUserByuser_id(login.getUsername());
        // System.out.println("massaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
        if (user == null) {
            String jason = "{\"isvalid\":\"user id not exsit\"}";
            return jason;
        } else {

            user.setPwcounter(0);
            PasswordEncoder pe = new PasswordEncoder();
            String password = pe.nextPassword();
            System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>> pw= " + password + "  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
            String encodedpw = pe.Encode(password);
            user.setPassword(encodedpw);
            EmailSendingService email = new EmailSendingServiceImpl();
            email.SendMail(user.getEmail(), "Your password is change by BSCCollect", "your new password is = " + password);
            userService.resetPassowrd(user);
            String jason = "{\"isvalid\":\"reset password\"}";
            return jason;
            
        }

        //  return jason;
    }
}
