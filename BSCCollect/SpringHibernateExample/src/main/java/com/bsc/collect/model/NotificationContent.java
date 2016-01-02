/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Hasitha
 */
@Entity
@Table(name = "kpi_metric")
public class NotificationContent {

    @Id

    @Column(name = "kpi_name")
    String kpi_name;

    @Column(name = "Period")
    String Period;

    @Column(name = "kpiunit")
    String kpiunit;

    @Column(name = "metric_name")
    String metric_name;

    @Column(name = "metricunit")
    String metricunit;

    @Column(name = "province_name")
    String province_name;
    
    @Column(name = "province_id")
    int province_id;

    @Column(name = "duedate")
    int duedate;

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

    public String getKpiunit() {
        return kpiunit;
    }

    public void setKpiunit(String kpiunit) {
        this.kpiunit = kpiunit;
    }

    public String getMetric_name() {
        return metric_name;
    }

    public void setMetric_name(String metric_name) {
        this.metric_name = metric_name;
    }

    public String getMetricunit() {
        return metricunit;
    }

    public void setMetricunit(String metricunit) {
        this.metricunit = metricunit;
    }

    public String getProvince_name() {
        return province_name;
    }

    public void setProvince_name(String province_name) {
        this.province_name = province_name;
    }

    public int getProvince_id() {
        return province_id;
    }

    public void setProvince_id(int province_id) {
        this.province_id = province_id;
    }

    public int getDuedate() {
        return duedate;
    }

    public void setDuedate(int duedate) {
        this.duedate = duedate;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 79 * hash + (this.kpi_name != null ? this.kpi_name.hashCode() : 0);
        hash = 79 * hash + (this.Period != null ? this.Period.hashCode() : 0);
        hash = 79 * hash + (this.kpiunit != null ? this.kpiunit.hashCode() : 0);
        hash = 79 * hash + (this.metric_name != null ? this.metric_name.hashCode() : 0);
        hash = 79 * hash + (this.metricunit != null ? this.metricunit.hashCode() : 0);
        hash = 79 * hash + (this.province_name != null ? this.province_name.hashCode() : 0);
        hash = 79 * hash + this.province_id;
        hash = 79 * hash + this.duedate;
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
        final NotificationContent other = (NotificationContent) obj;
        if ((this.kpi_name == null) ? (other.kpi_name != null) : !this.kpi_name.equals(other.kpi_name)) {
            return false;
        }
        if ((this.Period == null) ? (other.Period != null) : !this.Period.equals(other.Period)) {
            return false;
        }
        if ((this.kpiunit == null) ? (other.kpiunit != null) : !this.kpiunit.equals(other.kpiunit)) {
            return false;
        }
        if ((this.metric_name == null) ? (other.metric_name != null) : !this.metric_name.equals(other.metric_name)) {
            return false;
        }
        if ((this.metricunit == null) ? (other.metricunit != null) : !this.metricunit.equals(other.metricunit)) {
            return false;
        }
        if ((this.province_name == null) ? (other.province_name != null) : !this.province_name.equals(other.province_name)) {
            return false;
        }
        if (this.province_id != other.province_id) {
            return false;
        }
        if (this.duedate != other.duedate) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "NotificationContent{" + "kpi_name=" + kpi_name + ", Period=" + Period + ", kpiunit=" + kpiunit + ", metric_name=" + metric_name + ", metricunit=" + metricunit + ", province_name=" + province_name + ", province_id=" + province_id + ", duedate=" + duedate + '}';
    }

    
}
