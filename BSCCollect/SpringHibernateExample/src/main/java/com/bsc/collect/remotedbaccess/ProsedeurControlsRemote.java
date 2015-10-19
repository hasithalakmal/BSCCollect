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
import java.util.List;

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

    public String callQuery(String sql) {
        String transaction_state = "";
      //  System.out.println("1");
        int x = 0;
        try {
           // System.out.println("2");
            dbmc = DataBaseManagement.getInstance();
           // System.out.println("3");
            transaction_state = dbmc.getErrorState();
            if (transaction_state.equals("success")) {
                //System.out.println(transaction_state);
                con = (Connection) dbmc.setConnetctionRemote();
               // System.out.println("4");
                transaction_state = dbmc.getErrorState();
                if (transaction_state.equals("success")) {
                    state = con.createStatement();
                    transaction_state = dbmc.getErrorState();
                    if (transaction_state.equals("success")) {
                       // System.out.println("  >>>> " + transaction_state);
                        x = state.executeUpdate(sql);
                       // System.out.println("x>>>" + x + "  >>>> " + transaction_state);
                       // System.out.println(sql);
                        transaction_state = "success";
                    }
                }
            }

        } catch (SQLException ex) {
            System.out.println("erroe callQuery");
            transaction_state = ex.toString();
        }finally{
             return transaction_state;
        }

    }

    public String insertdatatoremotedb(List metriclist, List datelist, List valuelist) {
        String transaction_state = "";
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
            transaction_state = "success";
        } catch (SQLException ex) {
            System.out.println("error Remotedb");
            transaction_state = ex.toString();
        } finally {
            return transaction_state;
        }
    }

}
