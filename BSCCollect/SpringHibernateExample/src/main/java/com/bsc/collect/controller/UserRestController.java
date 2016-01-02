/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.controller;


import com.bsc.collect.model.PasswordEncoder;
import com.bsc.collect.model.User;
import com.bsc.collect.service.EmailSendingService;
import com.bsc.collect.service.EmailSendingServiceImpl;
import com.bsc.collect.service.UserService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Hasitha
 */
@RestController
public class UserRestController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/userdata/", method = RequestMethod.GET)
    public ResponseEntity<List<User>> listAllUser() {

        List<User> user = userService.findAllUser();

        System.out.println("Hello massa..." + user);
        return new ResponseEntity<List<User>>(user, HttpStatus.OK);
    }
    
    
    @RequestMapping(value = "/userdataone/{user_id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<User> getuser(@PathVariable("user_id") String user_id) {
        System.out.println("Fetching User with id " + user_id);
        User user = userService.findUserByuser_id(user_id);
        if (user == null) {
            System.out.println("User with id " + user_id + " not found");
            return new ResponseEntity<User>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<User>(user, HttpStatus.OK);
    }
    
    
    @RequestMapping(value = "/userdata/", method = RequestMethod.POST, consumes = "application/json", produces = "application/json")
    @ResponseBody
    public ResponseEntity<Void> createUser(@RequestBody User user) {
        System.out.println(user.toString());
        System.out.println("ado massaaaa");
        System.out.println("Creating User " + user.getUser_id());

       if (!userService.isUseruser_idUnique(user.getUser_id())) {
            System.out.println("A Province with name " + user.getUser_id()+ " already exist");
            return new ResponseEntity<Void>(HttpStatus.CONFLICT);
        }

       //set other data from the system
        user.setPwcounter(0);
        PasswordEncoder pe = new PasswordEncoder();
        String password = pe.nextPassword();
        System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>> pw= "+password+"  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
        String encodedpw = pe.Encode(password);
        user.setPassword(encodedpw);
        EmailSendingService email = new EmailSendingServiceImpl();
        email.SendMail(user.getEmail(), "You are registerd to BSCCollect", "your new user ID is ="+user.getUser_id() +" password is = "+password);
        userService.saveUser(user);
        System.out.println("massoooo");
        HttpHeaders headers = new HttpHeaders();
       // headers.setLocation(ucBuilder.path("/userdata/{user_id}").buildAndExpand(user.getUser_id()).toUri());
        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/userdata/", method = RequestMethod.PUT, consumes = "application/json", produces = "application/json")
    @ResponseBody
    public ResponseEntity<Void> UpdateUser(@RequestBody User user) {
        System.out.println("ado massaaaa");
        System.out.println("Creating User " + user.getUser_id());

       if (userService.isUseruser_idUnique(user.getUser_id())) {
            System.out.println("A User with name " + user.getUser_id()+ " not exist");
            return new ResponseEntity<Void>(HttpStatus.CONFLICT);
        }

       //set other data from the system
        userService.updateUser(user);
        HttpHeaders headers = new HttpHeaders();
       // headers.setLocation(ucBuilder.path("/userdata/{user_id}").buildAndExpand(user.getUser_id()).toUri());
        return new ResponseEntity<Void>(headers, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/userdata/", method = RequestMethod.DELETE, consumes = "application/json", produces = "application/json")
    @ResponseBody
    public ResponseEntity<Void> DeleteUser(@RequestBody User user) {
        System.out.println("ado massaaaa");
        System.out.println("Creating User " + user.getUser_id());

       if (userService.isUseruser_idUnique(user.getUser_id())) {
            System.out.println("A User with name " + user.getUser_id()+ " not exist");
            return new ResponseEntity<Void>(HttpStatus.CONFLICT);
        }

       //set other data from the system
        userService.deleteUserByuser_id(user.getUser_id());
        HttpHeaders headers = new HttpHeaders();
       // headers.setLocation(ucBuilder.path("/userdata/{user_id}").buildAndExpand(user.getUser_id()).toUri());
        return new ResponseEntity<Void>(headers, HttpStatus.OK);
    }
    
    

}
