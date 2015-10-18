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
import java.util.logging.Level;
import java.util.logging.Logger;
import static org.joda.time.format.ISODateTimeFormat.date;

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
    
    
    public void transferdata(){
        try {
            List metriclist = new ArrayList();
            List datelist = new ArrayList();
            List valuelist = new ArrayList();
            
            ProsedeurControlsRemote pcr = new ProsedeurControlsRemote();
            ProsedeurControlsLocal pcl = new ProsedeurControlsLocal();
            pcr.callQuery("TRUNCATE latestdata;");
            ResultSet res = pcl.callProc("selectConnectData");
          //  String sql = "insert into latestdata(metricname,date,value) values";
            boolean flag=false;
            while(res.next()){
                String metricname = res.getString(1);
                Date date = res.getDate(2);
                float value = res.getFloat(3);
                
                metriclist.add(metricname);
                datelist.add(date);
                valuelist.add(value);
                
                
               // String para= "('"+metricname+"','"+date+"',"+value+")";
               // System.out.println(para);
              /*  if(flag){
                    sql= sql+" , "+para;
                }else{
                    sql= sql+para;
                    flag = true;
                }*/
               
            }
            System.out.println(metriclist);
            pcr.insertdatatoremotedb(metriclist, datelist, valuelist);
           // sql=sql+";";
           // System.out.println("hello massa... "+ sql);
          //  pcr.callQuery(sql);
        } catch (SQLException ex) {
            Logger.getLogger(TrancferData.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
