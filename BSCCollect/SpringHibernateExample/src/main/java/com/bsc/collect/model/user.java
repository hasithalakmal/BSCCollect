/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.model;

import java.io.Serializable;
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
@Table(name = "user")
public class user implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Size(min = 1, max = 45)
    @Column(name = "user_id", nullable = false)
    private String user_id;

    @Size(min = 1, max = 45)
    @Column(name = "user_name", nullable = false)
    private String user_name;

    @Size(min = 10, max = 12)
    @Column(name = "phone_number", nullable = false)
    private String phone_number;

    @Size(min = 1, max = 45)
    @Column(name = "email", nullable = false)
    private String email;

    @Size(min = 1, max = 45)
    @Column(name = "designation", nullable = false)
    private String designation;

    @Size(min = 1, max = 45)
    @Column(name = "password", nullable = false)
    private String password;

    @Column(name = "pwcounter", nullable = false)
    private int pwcounter;

    @Size(min = 1, max = 45)
    @Column(name = "user_type", nullable = false)
    private String user_type;

    @Column(name = "province_id", nullable = false)
    private int province_id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
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
    public int hashCode() {
        int hash = 7;
        hash = 79 * hash + this.id;
        hash = 79 * hash + (this.user_id != null ? this.user_id.hashCode() : 0);
        hash = 79 * hash + (this.user_name != null ? this.user_name.hashCode() : 0);
        hash = 79 * hash + (this.phone_number != null ? this.phone_number.hashCode() : 0);
        hash = 79 * hash + (this.email != null ? this.email.hashCode() : 0);
        hash = 79 * hash + (this.designation != null ? this.designation.hashCode() : 0);
        hash = 79 * hash + (this.password != null ? this.password.hashCode() : 0);
        hash = 79 * hash + this.pwcounter;
        hash = 79 * hash + (this.user_type != null ? this.user_type.hashCode() : 0);
        hash = 79 * hash + this.province_id;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final user other = (user) obj;
        if (this.id != other.id) {
            return false;
        }
        if ((this.user_id == null) ? (other.user_id != null) : !this.user_id.equals(other.user_id)) {
            return false;
        }
        if ((this.user_name == null) ? (other.user_name != null) : !this.user_name.equals(other.user_name)) {
            return false;
        }
        if ((this.phone_number == null) ? (other.phone_number != null) : !this.phone_number.equals(other.phone_number)) {
            return false;
        }
        if ((this.email == null) ? (other.email != null) : !this.email.equals(other.email)) {
            return false;
        }
        if ((this.designation == null) ? (other.designation != null) : !this.designation.equals(other.designation)) {
            return false;
        }
        if ((this.password == null) ? (other.password != null) : !this.password.equals(other.password)) {
            return false;
        }
        if (this.pwcounter != other.pwcounter) {
            return false;
        }
        if ((this.user_type == null) ? (other.user_type != null) : !this.user_type.equals(other.user_type)) {
            return false;
        }
        if (this.province_id != other.province_id) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "user{" + "id=" + id + ", user_id=" + user_id + ", user_name=" + user_name + ", phone_number=" + phone_number + ", email=" + email + ", designation=" + designation + ", password=" + password + ", pwcounter=" + pwcounter + ", user_type=" + user_type + ", province_id=" + province_id + '}';
    }

   
}
