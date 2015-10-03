/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.dao;

import com.bsc.collect.model.MetricData;
import java.util.List;

/**
 *
 * @author Hasitha
 */
public interface MetricDataDao {
    
	MetricData findById(int id);

	void saveMetricData(MetricData metricData);
	
	void deleteMetricData(String provincename);
	
	List<MetricData> findAllMetricData();

	MetricData findMetricDataByName(String provincename);
}
