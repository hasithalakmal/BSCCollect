/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.dao;

import com.bsc.collect.model.InsertedMetricData;
import java.util.List;

/**
 *
 * @author Hasitha
 */

public interface InsertedMetricDataDao {
    List<InsertedMetricData> findAllInsertedMetricData();
    List saveInsertedMetricData(InsertedMetricData insertedMetricData);
}
