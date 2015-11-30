/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

/**
 *
 * @author Hasitha
 */
@Entity
@Table(name = "USER")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    String id;
    
    @Size(min = 3, max = 50)
    @Column(name = "user_id", nullable = false)
    private String user_id;

    @Size(min = 3, max = 50)
    @Column(name = "user_name", nullable = false)
    private String user_name;

    @Size(min = 3, max = 50)
    @Column(name = "phone_number", nullable = false)
    private String phone_number;

    @Size(min = 3, max = 50)
    @Column(name = "email", nullable = false)
    private String email;

    @Size(min = 3, max = 50)
    @Column(name = "designation", nullable = false)
    private String designation;

    @Size(min = 1, max = 50)
    @Column(name = "password")
    private String password;

    
    @Column(name = "pwcounter")
    private int pwcounter;

    @Size(min = 1, max = 50)
    @Column(name = "user_type")
    private String user_type;

    
    @Column(name = "province_id")
    private int province_id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getPwcounter() {
        return pwcounter;
    }

    public void setPwcounter(int pwcounter) {
        this.pwcounter = pwcounter;
    }

    public String getUser_type() {
        return user_type;
    }

    public void setUser_type(String user_type) {
        this.user_type = user_type;
    }

    public int getProvince_id() {
        return province_id;
    }

    public void setProvince_id(int province_id) {
        this.province_id = province_id;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", user_id=" + user_id + ", user_name=" + user_name + ", phone_number=" + phone_number + ", email=" + email + ", designation=" + designation + ", password=" + password + ", pwcounter=" + pwcounter + ", user_type=" + user_type + ", province_id=" + province_id + '}';
    }

   
    
    
}
