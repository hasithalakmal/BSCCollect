/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.service;

import com.bsc.collect.dao.InsertedMetricDataDao;
import com.bsc.collect.model.InsertedMetricData;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Hasitha
 */
@Service("insertedMetricDataService")
@Transactional
public class InsertedMetricDataServiceImpl implements InsertedMetricDataService{
    

    @Autowired
    private  InsertedMetricDataDao dao;
    
    public List<InsertedMetricData> findAllInsertedMetricData() {
       return dao.findAllInsertedMetricData();
    }

    public void saveinsertedMetricData(InsertedMetricData insertedMetricData) {
        dao.saveInsertedMetricData(insertedMetricData);
    }
    
}
