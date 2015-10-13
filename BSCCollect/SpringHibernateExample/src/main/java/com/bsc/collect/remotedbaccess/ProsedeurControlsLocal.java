/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.remotedbaccess;

import com.mysql.jdbc.Connection;
import java.sql.ResultSet;

/**
 *
 * @author Hasitha
 */
public class ProsedeurControlsLocal {
    DataBaseManagement dbmc;
    Connection con;
    String query;
    ResultSet rs;

    public ResultSet callProc(String procedure, String parameterSet) {
        dbmc = new DataBaseManagement();
        con = (Connection) dbmc.setConnetctionLocal();
        query = "call "+dbmc.getDbname()+"." + procedure + parameterSet + ";";
        System.out.println(query);
        rs = dbmc.getResult(query, con);
        return rs;

    }

    public ResultSet callProc(String procedure) {
        dbmc = new DataBaseManagement();
        con = (Connection) dbmc.setConnetctionLocal();
        query = "call "+dbmc.getDbname()+"." + procedure + "();";
         System.out.println(query);
        rs = dbmc.getResult(query, con);
        return rs;

    }
}
