/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.dao;

import com.bsc.collect.model.NotificationMsg;
import com.bsc.collect.service.EmailSendingService;
import com.bsc.collect.service.EmailSendingServiceImpl;
import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Hasitha
 */
@Repository("notificationMsgDao")
public class NotificationMsgDaoImpl extends AbstractDao<Integer, NotificationMsgDao> implements NotificationMsgDao {

     EmailSendingService emailSendingService = new EmailSendingServiceImpl();
    
    public List getNotificationMsg(NotificationMsg notificationMsg) {
        
        Query query1 = getSession().createSQLQuery(
                "CALL select_all_province(); ");
        List result1 = query1.list();
        System.out.println(result1);

        for (int i = 0; i < result1.size(); i++) {
            String para = "(" + notificationMsg.getMonthofnotidied() + ",'" + result1.get(i) + "');";

            Query query = getSession().createSQLQuery(
                    "CALL notifiedKPI_MetricList " + para);

            List result = query.list();

            System.out.println(result.toString());
           
            emailSendingService.SendMail("ghasithalakmal@gmail.com", "BSC Collect", "This is a reminder from BSC Collect. You Should update these data within two weeks."+result.toString());

        }

        //  notificationMsg.setKpi_name(result.get(2).toString());
        return null;
        
    }

}
