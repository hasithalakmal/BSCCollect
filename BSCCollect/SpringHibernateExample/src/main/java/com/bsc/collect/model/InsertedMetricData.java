/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.model;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Hasitha
 */
public class InsertedMetricData {

    String kpiName, metricName, date, value, reason;

    public String getKpiName() {
        return kpiName;
    }

    public void setKpiName(String kpiName) {
        this.kpiName = kpiName;
    }

    public String getMetricName() {
        return metricName;
    }

    public void setMetricName(String metricName) {
        this.metricName = metricName;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 79 * hash + (this.kpiName != null ? this.kpiName.hashCode() : 0);
        hash = 79 * hash + (this.metricName != null ? this.metricName.hashCode() : 0);
        hash = 79 * hash + (this.date != null ? this.date.hashCode() : 0);
        hash = 79 * hash + (this.value != null ? this.value.hashCode() : 0);
        hash = 79 * hash + (this.reason != null ? this.reason.hashCode() : 0);
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
        final InsertedMetricData other = (InsertedMetricData) obj;
        if ((this.kpiName == null) ? (other.kpiName != null) : !this.kpiName.equals(other.kpiName)) {
            return false;
        }
        if ((this.metricName == null) ? (other.metricName != null) : !this.metricName.equals(other.metricName)) {
            return false;
        }
        if ((this.date == null) ? (other.date != null) : !this.date.equals(other.date)) {
            return false;
        }
        if ((this.value == null) ? (other.value != null) : !this.value.equals(other.value)) {
            return false;
        }
        if ((this.reason == null) ? (other.reason != null) : !this.reason.equals(other.reason)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "{" + "kpiName : " + kpiName + ", metricName :" + metricName + ", date : " + date + ", value : " + value + ", reason : " + reason + '}';
    }

    public String toJason() {
         String j = "";
        try {
           
            ObjectMapper ow = new ObjectMapper();
            String json = ow.writeValueAsString(this);
            j=json;
            System.out.println(">>>>>>>>>>>>>>>>>>>>>>"+json);
        } catch (JsonProcessingException ex) {
            Logger.getLogger(InsertedMetricData.class.getName()).log(Level.SEVERE, null, ex);
        }
         return j;
    }

}
