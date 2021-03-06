/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.dao;

import com.bsc.collect.model.NotificationContent;
import com.bsc.collect.model.NotificationMsg;
import com.bsc.collect.model.User;
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
    int proid = 0;
    String proname = "";

    public List getNotificationMsg(NotificationMsg notificationMsg) {
        System.out.println("massooooooooooooo : "+notificationMsg.getMonthofnotidied());

        Query query1 = getSession().createSQLQuery(
                "CALL select_all_province(); ");
        List result1 = query1.list();
        System.out.println(result1);

        for (int i = 0; i < result1.size(); i++) {
            String email = "";

            String para = "(" + notificationMsg.getMonthofnotidied() + ",'" + result1.get(i) + "');";
            System.out.println("SQL : "+para);

            Query query = getSession().createSQLQuery(
                    "CALL notifiedKPI_MetricList_New " + para)
                    .addEntity(NotificationContent.class);

            List result = query.list();
            for (int j = 0; j < result.size(); j++) {
                NotificationContent noti = null;
                noti = (NotificationContent) result.get(j);
                System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
                System.out.println(noti.toString());
                System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
                proid = noti.getProvince_id();
                proname = noti.getProvince_name();
                String row = "<tr>\n"
                        + "                <td>" + noti.getKpi_name() + "</td>\n"
                        + "                <td>" + noti.getMetric_name() + "</td>\n"
                        + "                <td>" + noti.getPeriod() + "</td>\n"
                        + "                <td>" + noti.getMetricunit() + "</td>\n"
                        + "                <td>" + (notificationMsg.getMonthofnotidied()) + "/" + noti.getDuedate() + "</td>\n"
                        + "            </tr>";

                email = email + row;

            }

            email = email + " </table>\n"
                    + "        <p>We Shall be thankful if you could send us the same on or before the above date/ at your earliest for us to compile the Balanced Score Card report with updated KPIs to the CMT.</p>\n"
                    + "        <p><b>Corporate Strategy Division</b></p>\n"
                    + "        </div>\n"
                    + "    </body>\n"
                    + "</html>\n";

            String para2 = "('" + result1.get(i) + "');";

            Query query2 = getSession().createSQLQuery(
                    "CALL getuserByProvince " + para2)
                    .addEntity(User.class);

            List result2 = query2.list();
            for (int j = 0; j < result2.size(); j++) {
                User user = (User) result2.get(j);

                String heder = "<!DOCTYPE html>\n"
                        + "<html>\n"
                        + "    <head>\n"
                        + "        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=windows-1252\">\n"
                        + "        <title>JSP Page</title>\n"
                        + "    </head>\n"
                        + "    <body>\n"
                        + "        <div>\n"
                        + "        <h2>" + user.getUser_id()+ " (" + user.getDesignation() + ") " + result1.get(i) + "</h2>\n"
                        + "        <p>This is a serve you as a helpful reminder that the following data to compute the respective KPI is due/overdue on the date indicated bellow. </p>\n"
                        + "        <table  border=\"1\" style=\"width:80%;border-color: blue;border-style: solid;\">\n"
                        + "            \n"
                        + "            <tr style=\"background-color: yellow\">\n"
                        + "                <td>KPI</td>\n"
                        + "                <td>Data Required</td>\n"
                        + "                <td>Update Frequency</td>\n"
                        + "                <td>Unit</td>\n"
                        + "                <td>Due Date</td>\n"
                        + "            </tr>";

                String email2 = heder + email;

                if (user.getEmail() != null) {
                    emailSendingService.SendMail(user.getEmail(), "BSC Collect", "This is a reminder from BSC Collect.", email2);
                }
                heder="";
                email2 ="";
            }

            System.out.println("xxxxxxxxxxxxxxxxxxxx");
            /*  for (User user : users) {
             if(pid==user.getProvince_id()){*/

            /*       }
             }*/
        }

        //  notificationMsg.setKpi_name(result.get(2).toString());
        return null;

    }

    public List getLateNotificationMsg(NotificationMsg notificationMsg) {

        Query query1 = getSession().createSQLQuery(
                "CALL select_all_province(); ");
        List result1 = query1.list();
        System.out.println(result1);

        for (int i = 0; i < result1.size(); i++) {
            String para = "(" + notificationMsg.getMonthofnotidied() + ",'" + result1.get(i) + "');";

            Query query = getSession().createSQLQuery(
                    "CALL notifiedLateDataSet " + para);

            List result = query.list();

            System.out.println(result.toString());

            emailSendingService.SendMail("ghasithalakmal@gmail.com", "BSC Collect", "This is a Late reminder from BSC Collect. You didnt update these data." + result.toString());

        }

        //  notificationMsg.setKpi_name(result.get(2).toString());
        return null;

    }

}
