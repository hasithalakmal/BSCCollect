/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.remotedbaccess;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Hasitha
 */
public class testMain {

    public static void main(String[] args) throws IOException {
        try {
            
            DataBaseManagement d = new DataBaseManagement();
            Connection con1 = d.setConnetctionRemote();
            ResultSet ans = d.getResult("select * from latestdata;", con1);
            while (ans.next()) {
                String x = ans.getString(2);
                System.out.println(x);
            }
        } catch (SQLException ex) {
            Logger.getLogger(testMain.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
