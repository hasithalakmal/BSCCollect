/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.wrapper;

import com.bsc.collect.model.InsertedMetricData;
import java.util.List;

/**
 *
 * @author Hasitha
 */
public class InsertedMetricDataWrapper {
    private List<InsertedMetricData> InsertedMetricDatas;

    /**
     * @return the persons
     */
    public List<InsertedMetricData> getInsertedMetricDatas() {
        return InsertedMetricDatas;
    }

    /**
     * @param InsertedMetricDatas the persons to set
     */
    public void setInsertedMetricDatas(List<InsertedMetricData> InsertedMetricDatas) {
        this.InsertedMetricDatas = InsertedMetricDatas;
    }
}
