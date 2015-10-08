/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.dao;

import com.bsc.collect.model.MetricData;
import com.bsc.collect.model.Province;
import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Hasitha
 */
@Repository("metricDataDao")
public class MetricDataDaoImpl extends AbstractDao<Integer, MetricData> implements MetricDataDao  {

    public MetricData findById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void saveMetricData(MetricData metricData) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void deleteMetricData(String provincename) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public List<MetricData> findAllMetricData() {
      System.out.println("Its working baby....");
        Query query = getSession().createSQLQuery(
                "CALL select_all_province()")
                .addEntity(Province.class);

        List result = query.list();
        System.out.println(result.toString());
        return result;
    }

    public MetricData findMetricDataByName(String provincename) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
