package com.bsc.collect.service;

import java.util.List;

import com.bsc.collect.model.Employee;
import com.bsc.collect.model.MetricData;

public interface MetricDataService {

    MetricData findById(int id);

    void saveMetricData(MetricData metricData);

    void updateMetricData(MetricData metricData);

    void deleteMetricDataBySsn(String ssn);

    List<MetricData> findAllMetricData();

    MetricData findMetricDataBySsn(String ssn);

    boolean isMetricDataSsnUnique(Integer id, String ssn);

    public boolean isMetricDataExist(MetricData metricData);

   

}
