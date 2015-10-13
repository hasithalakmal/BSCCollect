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

    String kpiName, metricName, reson;
    float minVal, maxVal;

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

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 23 * hash + (this.kpiName != null ? this.kpiName.hashCode() : 0);
        hash = 23 * hash + (this.metricName != null ? this.metricName.hashCode() : 0);
        hash = 23 * hash + (this.reson != null ? this.reson.hashCode() : 0);
        hash = 23 * hash + Float.floatToIntBits(this.minVal);
        hash = 23 * hash + Float.floatToIntBits(this.maxVal);
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
        if (Float.floatToIntBits(this.minVal) != Float.floatToIntBits(other.minVal)) {
            return false;
        }
        if (Float.floatToIntBits(this.maxVal) != Float.floatToIntBits(other.maxVal)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "StructureData{" + "kpiName=" + kpiName + ", metricName=" + metricName + ", reson=" + reson + ", minVal=" + minVal + ", maxVal=" + maxVal + '}';
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
