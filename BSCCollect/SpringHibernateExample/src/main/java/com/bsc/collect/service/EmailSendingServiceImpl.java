/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.service;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Hasitha
 */
@Service("emailSendingService")
@Transactional
public class EmailSendingServiceImpl implements EmailSendingService {

    public String SendMail(String to, String subject, String massage) {
       /* final String username = "nizarucsc@gmail.com";
        final String password = "Ksn$w840756";

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("ghasithalakmal@gmail.com"));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse("ghasithalakmal@gmail.com"));
            message.setSubject("Test JCG Example");
            message.setText("Hi,"
                    + "This is a Test mail for JCG Example!");

            Transport.send(message);

            System.out.println("Mail sent succesfully!");

        } catch (MessagingException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
*/
            System.out.println("awaaaaa");
         final String username = "collect.bsc@gmail.com";
         final String password = "ceb@123$%";

         Properties props = new Properties();
         props.put("mail.smtp.auth", "true");
         props.put("mail.smtp.starttls.enable", "true");
         props.put("mail.smtp.host", "smtp.gmail.com");
         props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
         props.put("mail.smtp.port", "587");
         System.out.println("awaaaaa1111");
         Session session = Session.getInstance(props, new javax.mail.Authenticator() {
         protected PasswordAuthentication getPasswordAuthentication() {
         System.out.println("awaaaaa2222");
         return new PasswordAuthentication(username, password);
         }
         });
         System.out.println("awaaaaa3333");
         try {

         Message message = new MimeMessage(session);
         message.setFrom(new InternetAddress(username));
         message.setRecipients(Message.RecipientType.TO,
         InternetAddress.parse(to));
         message.setSubject(subject);
         message.setText(massage);

         Transport.send(message);

             System.out.println("Email is sended");
         return ("Massage is sended to " + to);

         } catch (MessagingException e) {

         System.out.println(e);
         }
        return null;
    }
    
    public String SendMail(String to, String subject, String massage,String content) {
       /* final String username = "nizarucsc@gmail.com";
        final String password = "Ksn$w840756";

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("ghasithalakmal@gmail.com"));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse("ghasithalakmal@gmail.com"));
            message.setSubject("Test JCG Example");
            message.setText("Hi,"
                    + "This is a Test mail for JCG Example!");

            Transport.send(message);

            System.out.println("Mail sent succesfully!");

        } catch (MessagingException e) {
            System.out.println(e);
            throw new RuntimeException(e);
        }
*/
            System.out.println("awaaaaa");
         final String username = "collect.bsc@gmail.com";
         final String password = "ceb@123$%";

         Properties props = new Properties();
         props.put("mail.smtp.auth", "true");
         props.put("mail.smtp.starttls.enable", "true");
         props.put("mail.smtp.host", "smtp.gmail.com");
         props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
         props.put("mail.smtp.port", "587");
         System.out.println("awaaaaa1111");
         Session session = Session.getInstance(props, new javax.mail.Authenticator() {
         protected PasswordAuthentication getPasswordAuthentication() {
         System.out.println("awaaaaa2222");
         return new PasswordAuthentication(username, password);
         }
         });
         System.out.println("awaaaaa3333");
         try {

         Message message = new MimeMessage(session);
         message.setFrom(new InternetAddress(username));
         message.setRecipients(Message.RecipientType.TO,
         InternetAddress.parse(to));
         message.setSubject(subject);
         message.setText(massage);
         message.setContent(content,"text/html");

         Transport.send(message);

             System.out.println("Email is sended");
         return ("Massage is sended to " + to);

         } catch (MessagingException e) {

         System.out.println(e);
         }
        return null;
    }

    /*
     public String BringMail(String subject, String massage) {

     final String username = "sirivajiragnanadahampasala@gmail.com";
     //final String password = "0756780065mic@";
     final String username2 = "ghasithalakmal@gmail.com";
     final String password2 = "0756780065micr";

     Properties props = new Properties();
     props.put("mail.smtp.auth", "true");
     props.put("mail.smtp.starttls.enable", "true");
     props.put("mail.smtp.host", "smtp.gmail.com");
     props.put("mail.smtp.port", "587");

     Session session = Session.getInstance(props,
     new javax.mail.Authenticator() {
     protected PasswordAuthentication getPasswordAuthentication() {
     return new PasswordAuthentication(username2, password2);
     }
     });

     try {

     Message message = new MimeMessage(session);
     message.setFrom(new InternetAddress(username));
     message.setRecipients(Message.RecipientType.TO,
     InternetAddress.parse(username));
     message.setSubject(subject);
     message.setText(massage);

     Transport.send(message);

     return ("Massage is sended ");

     } catch (MessagingException e) {

     throw new RuntimeException(e);
     }
     }*/

    /* public static void main(String[] args) {
     EmailSendingServiceImpl sm = new EmailSendingServiceImpl();
     sm.SendMail("ghasithalakmal@gmail.com", "test", "This is working.......");
     }*/
}
