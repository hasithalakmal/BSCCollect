/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.model;

import java.io.Serializable;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.Size;

/**
 *
 * @author Hasitha
 */
@Entity(name = "ForeignKeyAssoEntity")
@Table(name = "province", uniqueConstraints = {
@UniqueConstraint(columnNames = "province_id"),
@UniqueConstraint(columnNames = "province_name") })
public class Province implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int province_id;

    @Size(min = 1, max = 45)
    @Column(name = "province_name", nullable = false)
    private String province_name;

    

    public int getProvince_id() {
        return province_id;
    }

    public void setProvince_id(int province_id) {
        this.province_id = province_id;
    }

    public String getProvince_name() {
        return province_name;
    }

    public void setProvince_name(String province_name) {
        this.province_name = province_name;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 61 * hash + this.province_id;
        hash = 61 * hash + (this.province_name != null ? this.province_name.hashCode() : 0);
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
        final Province other = (Province) obj;
        if (this.province_id != other.province_id) {
            return false;
        }
        if ((this.province_name == null) ? (other.province_name != null) : !this.province_name.equals(other.province_name)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Province{" + "province_id=" + province_id + ", province_name=" + province_name + '}';
    }

   

    
    

}
