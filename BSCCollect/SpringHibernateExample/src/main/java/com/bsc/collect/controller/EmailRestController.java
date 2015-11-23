/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.controller;

import com.bsc.collect.service.EmailSendingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Hasitha
 */
@RestController
public class EmailRestController {
    @Autowired
   EmailSendingService emailSendingService;
    
    @RequestMapping(value = "/sendemail/", method = RequestMethod.GET)
    public void sendEmails() {
        System.out.println("Working.....");
        emailSendingService.SendMail("ghasithalakmal@gmail.com", "BSC Collect", "This is a test e mail BSC Collect");

       
    }
}
