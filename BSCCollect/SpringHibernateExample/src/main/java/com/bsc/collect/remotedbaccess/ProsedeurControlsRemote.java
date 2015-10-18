/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.remotedbaccess;

import com.mysql.jdbc.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.List;
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

   

    public void insertdatatoremotedb(List metriclist, List datelist, List valuelist) {
        try {
            dbmc = DataBaseManagement.getInstance();
            con = (Connection) dbmc.setConnetctionRemote();

            con.setAutoCommit(false);
            Statement st = con.createStatement();
            String INSERT_RECORD = "insert into latestdata(metricname,date,value) values(?,?,?)";

            System.out.println("massooooooooo");

            PreparedStatement pstmt = con.prepareStatement(INSERT_RECORD);

            for (int i = 0; i < metriclist.size(); i++) {
                pstmt.setString(1, (String) metriclist.get(i));
                pstmt.setDate(2, (java.sql.Date) datelist.get(i));
                pstmt.setFloat(3, (Float) valuelist.get(i));
                System.out.println(metriclist.get(i) + " == " + datelist.get(i) + " == " + valuelist.get(i));
                pstmt.addBatch();
            }
            System.out.println(pstmt);
            int[] updateCounts = pstmt.executeBatch();

            // since there were no errors, commit
            con.commit();

          //  rs.close();
            st.close();
           // con.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProsedeurControlsRemote.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
