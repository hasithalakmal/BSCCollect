/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.service;

/**
 *
 * @author Hasitha
 */
public interface EmailSendingService {
    String SendMail(String to, String subject, String massage);
}
