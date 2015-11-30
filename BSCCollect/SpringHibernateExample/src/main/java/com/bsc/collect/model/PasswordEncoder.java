/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.model;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Hasitha
 */
public class PasswordEncoder {

    private SecureRandom random = new SecureRandom();

    public String Encode(String pass) {
        try {
            String password = pass;

            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(password.getBytes());

            byte byteData[] = md.digest();

            //convert the byte to hex format method 1
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < byteData.length; i++) {
                sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
            }

            String newpass = (sb.toString());
            return newpass;

        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(PasswordEncoder.class.getName()).log(Level.SEVERE, null, ex);
            return "error";
        }
    }

    public String nextPassword() {
        return new BigInteger(50, random).toString(32);
    }

    public static void main(String[] args) {
        PasswordEncoder pe = new PasswordEncoder();
        String x = pe.Encode("massa");
        System.out.println(x);
    }
}
