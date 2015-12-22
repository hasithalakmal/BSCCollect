/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.dao;

import com.bsc.collect.model.InsertedMetricData;
import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Hasitha
 */
@Repository("insertedMetricDataDao")
public class InsertedMetricDataDaoImpl extends AbstractDao<Integer, InsertedMetricData> implements InsertedMetricDataDao {

    public List<InsertedMetricData> findAllInsertedMetricData() {
        System.out.println("Its working baby....");
        Query query = getSession().createSQLQuery(
                "CALL select_all_data()")
                .addEntity(InsertedMetricData.class);

        List result = query.list();
        System.out.println(result.toString());
        return result;
    }

    public List saveInsertedMetricData(InsertedMetricData insertedMetricData) {
        System.out.println("Its working baby.... - massa");
      //  String para = "('Total Energy Delivered to Colombo City Via GSS during the six months.','adm1','2015/04/23',520);";

        String para = "('"+insertedMetricData.getKpiName()+"','"+insertedMetricData.getMetricName()+"','"+insertedMetricData.getUserid()+"','"+insertedMetricData.getDate()+"',"+insertedMetricData.getValue()+");";

        Query query = getSession().createSQLQuery(
                "CALL validate_data_insertion " + para);

        List result = query.list();
        String rs = result.get(0).toString();
        System.out.println("masso result is = redda" + rs);
        insertedMetricData.setReason(rs);
      //  System.out.println(insertedMetricData.toString());
      //  return result;
        return null;
    }

}
