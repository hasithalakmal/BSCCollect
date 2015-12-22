/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.dao;

import com.bsc.collect.model.StructureData;
import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Hasitha
 */
@Repository("structureDataDao")
public class StructureDataDaoImpl extends AbstractDao<Integer, StructureData> implements StructureDataDao {

    public List<StructureData> findAllStructureData() {
        System.out.println("Its working baby....");
        Query query = getSession().createSQLQuery(
                "CALL select_all_data()")
                .addEntity(StructureData.class);

        List result = query.list();
        System.out.println(result.toString());
        return result;
    }

    public List saveStructureData(StructureData structureData) {
        System.out.println("Its working baby.... - massa");
        //  String para = "('Total Energy Delivered to Colombo City Via GSS during the six months.','adm1','2015/04/23',520);";

        String para = "('" + structureData.getKpiName() + "','" + structureData.getMetricName() + "'," + structureData.getMinVal() + "," + structureData.getMaxVal()+",'" + structureData.getTimePeriod()+"','"+structureData.getProvincename()+ "','" + structureData.getKpiunit()+"','" + structureData.getMetricunit()+"',"+structureData.getMetricduedate()+");";

        Query query = getSession().createSQLQuery(
                "CALL validate_template_insertion " + para);

        List result = query.list();
        String rs = result.get(0).toString();
        System.out.println("masso result is = redda" + rs);
        structureData.setReson(rs);
      //  System.out.println(structureData.toString());
        //  return result;
        return null;
    }
}
