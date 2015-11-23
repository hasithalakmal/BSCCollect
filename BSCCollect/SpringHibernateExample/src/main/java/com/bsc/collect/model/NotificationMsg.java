/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.model;

import java.sql.ResultSet;

/**
 *
 * @author Hasitha
 */
public class NotificationMsg {
    String kpi_name,Period,metric_name,resultset,privincename;
    int kpi_id,metric_id,province_id,monthofnotidied;
   // ResultSet resultsetforemail;

    public String getKpi_name() {
        return kpi_name;
    }

    public void setKpi_name(String kpi_name) {
        this.kpi_name = kpi_name;
    }

    public String getPeriod() {
        return Period;
    }

    public void setPeriod(String Period) {
        this.Period = Period;
    }

    public String getMetric_name() {
        return metric_name;
    }

    public void setMetric_name(String metric_name) {
        this.metric_name = metric_name;
    }

    public String getResultset() {
        return resultset;
    }

    public void setResultset(String resultset) {
        this.resultset = resultset;
    }

    public String getPrivincename() {
        return privincename;
    }

    public void setPrivincename(String privincename) {
        this.privincename = privincename;
    }

    public int getKpi_id() {
        return kpi_id;
    }

    public void setKpi_id(int kpi_id) {
        this.kpi_id = kpi_id;
    }

    public int getMetric_id() {
        return metric_id;
    }

    public void setMetric_id(int metric_id) {
        this.metric_id = metric_id;
    }

    public int getProvince_id() {
        return province_id;
    }

    public void setProvince_id(int province_id) {
        this.province_id = province_id;
    }

    public int getMonthofnotidied() {
        return monthofnotidied;
    }

    public void setMonthofnotidied(int monthofnotidied) {
        this.monthofnotidied = monthofnotidied;
    }

  /*  public ResultSet getResultsetforemail() {
        return resultsetforemail;
    }

    public void setResultsetforemail(ResultSet resultsetforemail) {
        this.resultsetforemail = resultsetforemail;
    }*/

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 67 * hash + (this.kpi_name != null ? this.kpi_name.hashCode() : 0);
        hash = 67 * hash + (this.Period != null ? this.Period.hashCode() : 0);
        hash = 67 * hash + (this.metric_name != null ? this.metric_name.hashCode() : 0);
        hash = 67 * hash + (this.resultset != null ? this.resultset.hashCode() : 0);
        hash = 67 * hash + (this.privincename != null ? this.privincename.hashCode() : 0);
        hash = 67 * hash + this.kpi_id;
        hash = 67 * hash + this.metric_id;
        hash = 67 * hash + this.province_id;
        hash = 67 * hash + this.monthofnotidied;
       // hash = 67 * hash + (this.resultsetforemail != null ? this.resultsetforemail.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            System.out.println("Null object");
            return false;
        }
        if (getClass() != obj.getClass()) {
            System.out.println("Null class");
            return false;
        }
        final NotificationMsg other = (NotificationMsg) obj;
        if ((this.kpi_name == null) ? (other.kpi_name != null) : !this.kpi_name.equals(other.kpi_name)) {
            System.out.println("aaaaaaa");
            return false;
        }
        if ((this.Period == null) ? (other.Period != null) : !this.Period.equals(other.Period)) {
            System.out.println("bbbbbbbbb");
            return false;
        }
        if ((this.metric_name == null) ? (other.metric_name != null) : !this.metric_name.equals(other.metric_name)) {
            System.out.println("ccccccccc");
            return false;
        }
        if ((this.resultset == null) ? (other.resultset != null) : !this.resultset.equals(other.resultset)) {
            System.out.println("ddddddddd");
            return false;
        }
        if ((this.privincename == null) ? (other.privincename != null) : !this.privincename.equals(other.privincename)) {
            System.out.println("eeeeeeee");
            return false;
        }
        if (this.kpi_id != other.kpi_id) {
            System.out.println("fffffff");
            return false;
        }
        if (this.metric_id != other.metric_id) {
            System.out.println("ggggg");
            return false;
        }
        if (this.province_id != other.province_id) {
            System.out.println("hhhhhh");
            return false;
        }
        if (this.monthofnotidied != other.monthofnotidied) {
            System.out.println("iiiiii");
            return false;
        }
      /*  if (this.resultsetforemail != other.resultsetforemail && (this.resultsetforemail == null || !this.resultsetforemail.equals(other.resultsetforemail))) {
            return false;
        }*/
        return true;
    }

    @Override
    public String toString() {
        return "NotificationMsg{" + "kpi_name=" + kpi_name + ", Period=" + Period + ", metric_name=" + metric_name + ", resultset=" + resultset + ", privincename=" + privincename + ", kpi_id=" + kpi_id + ", metric_id=" + metric_id + ", province_id=" + province_id + ", monthofnotidied=" + monthofnotidied + ", resultsetforemail=" + '}';
    }

   
    
    
    
}
