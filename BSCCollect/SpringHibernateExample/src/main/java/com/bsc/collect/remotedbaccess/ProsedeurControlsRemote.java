/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.remotedbaccess;

import com.mysql.jdbc.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mr.Mic
 */
public class ProsedeurControlsRemote {

     private Statement state;
    private ResultSet result;
    DataBaseManagement dbmc;
    Connection con;
    String query;
    ResultSet rs;

    public ResultSet callProc(String procedure, String parameterSet) {
        dbmc = DataBaseManagement.getInstance();
        con = (Connection) dbmc.setConnetctionRemote();
        query = "call " + dbmc.getDbname() + "." + procedure + parameterSet + ";";
        rs = dbmc.getResult(query, con);
        System.out.println(query);
        return rs;

    }

    public ResultSet callProc(String procedure) {
        dbmc = DataBaseManagement.getInstance();
        con = (Connection) dbmc.setConnetctionRemote();
        query = "call " + dbmc.getDbname() + "." + procedure + "();";
        rs = dbmc.getResult(query, con);
        System.out.println(query);
        return rs;

    }
    
    public int callQuery(String sql) {
         int x = 0;
         try {
             dbmc = DataBaseManagement.getInstance();
             con = (Connection) dbmc.setConnetctionRemote();
             state = con.createStatement();
             x = state.executeUpdate(sql);
             
             System.out.println(sql);
             
         } catch (SQLException ex) {
             Logger.getLogger(ProsedeurControlsRemote.class.getName()).log(Level.SEVERE, null, ex);
         }

         return x;
    }

}
