/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.remotedbaccess;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hasitha
 */
public class TrancferData {

    /*  private static TrancferData td;
    
     private TrancferData(){
     td = new TrancferData();
     }
    
     public static TrancferData getInstance(){
     return td;
     }*/
    public String transferdata() {
        String transaction_state = "";
        try {
            List metriclist = new ArrayList();
            List datelist = new ArrayList();
            List valuelist = new ArrayList();

            ProsedeurControlsRemote pcr = new ProsedeurControlsRemote();
            ProsedeurControlsLocal pcl = new ProsedeurControlsLocal();
            transaction_state = pcr.callQuery("TRUNCATE latestdata;");
            System.out.println("Truncate>>>>>>>>>>" + transaction_state);
            if (transaction_state.equals("success")) {
                ResultSet res = pcl.callProc("selectConnectData");

                boolean flag = false;
                while (res.next()) {
                    String metricname = res.getString(1);
                    Date date = res.getDate(2);
                    float value = res.getFloat(3);

                    metriclist.add(metricname);
                    datelist.add(date);
                    valuelist.add(value);

                }
                System.out.println(metriclist);
                transaction_state = pcr.insertdatatoremotedb(metriclist, datelist, valuelist);
                System.out.println("transacction commit "+transaction_state);
            }

        } catch (SQLException ex) {
            transaction_state = ex.toString();
            System.out.println("errorrrrrr>>>>>>>>>>>>" + transaction_state);
        } finally {
            System.out.println("transaction_state>>>>>>>" + transaction_state);
          //  transaction_state = "{'state':'"+transaction_state+"'}";
            return transaction_state;
        }
    }
}
