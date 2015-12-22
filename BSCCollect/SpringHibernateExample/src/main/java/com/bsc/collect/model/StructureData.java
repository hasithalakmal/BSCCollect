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
public class StructureData {

    String kpiName, metricName, reson, timePeriod, provincename, kpiunit, metricunit;
    float minVal, maxVal;
    int metricduedate;

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

    public String getReson() {
        return reson;
    }

    public void setReson(String reson) {
        this.reson = reson;
    }

    public String getTimePeriod() {
        return timePeriod;
    }

    public void setTimePeriod(String timePeriod) {
        this.timePeriod = timePeriod;
    }

    public String getProvincename() {
        return provincename;
    }

    public void setProvincename(String provincename) {
        this.provincename = provincename;
    }

    public float getMinVal() {
        return minVal;
    }

    public void setMinVal(float minVal) {
        this.minVal = minVal;
    }

    public float getMaxVal() {
        return maxVal;
    }

    public void setMaxVal(float maxVal) {
        this.maxVal = maxVal;
    }

    public String getKpiunit() {
        return kpiunit;
    }

    public void setKpiunit(String kpiunit) {
        this.kpiunit = kpiunit;
    }

    public String getMetricunit() {
        return metricunit;
    }

    public void setMetricunit(String metricunit) {
        this.metricunit = metricunit;
    }

    public int getMetricduedate() {
        return metricduedate;
    }

    public void setMetricduedate(int metricduedate) {
        this.metricduedate = metricduedate;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 97 * hash + (this.kpiName != null ? this.kpiName.hashCode() : 0);
        hash = 97 * hash + (this.metricName != null ? this.metricName.hashCode() : 0);
        hash = 97 * hash + (this.reson != null ? this.reson.hashCode() : 0);
        hash = 97 * hash + (this.timePeriod != null ? this.timePeriod.hashCode() : 0);
        hash = 97 * hash + (this.provincename != null ? this.provincename.hashCode() : 0);
        hash = 97 * hash + (this.kpiunit != null ? this.kpiunit.hashCode() : 0);
        hash = 97 * hash + (this.metricunit != null ? this.metricunit.hashCode() : 0);
        hash = 97 * hash + Float.floatToIntBits(this.minVal);
        hash = 97 * hash + Float.floatToIntBits(this.maxVal);
        hash = 97 * hash + this.metricduedate;
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
        final StructureData other = (StructureData) obj;
        if ((this.kpiName == null) ? (other.kpiName != null) : !this.kpiName.equals(other.kpiName)) {
            return false;
        }
        if ((this.metricName == null) ? (other.metricName != null) : !this.metricName.equals(other.metricName)) {
            return false;
        }
        if ((this.reson == null) ? (other.reson != null) : !this.reson.equals(other.reson)) {
            return false;
        }
        if ((this.timePeriod == null) ? (other.timePeriod != null) : !this.timePeriod.equals(other.timePeriod)) {
            return false;
        }
        if ((this.provincename == null) ? (other.provincename != null) : !this.provincename.equals(other.provincename)) {
            return false;
        }
        if ((this.kpiunit == null) ? (other.kpiunit != null) : !this.kpiunit.equals(other.kpiunit)) {
            return false;
        }
        if ((this.metricunit == null) ? (other.metricunit != null) : !this.metricunit.equals(other.metricunit)) {
            return false;
        }
        if (Float.floatToIntBits(this.minVal) != Float.floatToIntBits(other.minVal)) {
            return false;
        }
        if (Float.floatToIntBits(this.maxVal) != Float.floatToIntBits(other.maxVal)) {
            return false;
        }
        if (this.metricduedate != other.metricduedate) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "StructureData{" + "kpiName=" + kpiName + ", metricName=" + metricName + ", reson=" + reson + ", timePeriod=" + timePeriod + ", provincename=" + provincename + ", kpiunit=" + kpiunit + ", metricunit=" + metricunit + ", minVal=" + minVal + ", maxVal=" + maxVal + ", metricduedate=" + metricduedate + '}';
    }

    
    

   
    public String toJason() {
        String j = "";
        try {

            ObjectMapper ow = new ObjectMapper();
            String json = ow.writeValueAsString(this);
            j = json;
            System.out.println(">>>>>>>>>>>>>>>>>>>>>>" + json);
        } catch (JsonProcessingException ex) {
            Logger.getLogger(StructureData.class.getName()).log(Level.SEVERE, null, ex);
        }
        return j;
    }
}
