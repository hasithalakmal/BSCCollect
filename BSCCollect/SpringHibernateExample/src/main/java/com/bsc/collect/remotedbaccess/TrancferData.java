/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.remotedbaccess;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

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
            ProsedeurControlsRemote pcr = new ProsedeurControlsRemote();
            ProsedeurControlsLocal pcl = new ProsedeurControlsLocal();
            pcr.callQuery("TRUNCATE latestdata;");
            ResultSet res = pcl.callProc("selectConnectData");
            
            while(res.next()){
                String metricname = res.getString(1);
                String date = res.getString(2);
                float value = res.getFloat(3);
                
                String para= "('"+metricname+"','"+date+"',"+value+");";
               // System.out.println(para);
                pcr.callQuery("insert into latestdata(metricname,date,value) values"+para);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TrancferData.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
