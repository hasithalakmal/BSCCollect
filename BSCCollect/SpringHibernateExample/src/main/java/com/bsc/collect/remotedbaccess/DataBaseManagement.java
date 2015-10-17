/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.remotedbaccess;

import java.sql.*;
import java.util.Map;

/**
 *
 * @author Mr.Mic
 */
public class DataBaseManagement {

    private Statement state;
    private ResultSet result;
    //  private Connection con;
    private final ConfigRemoteDB properties = new ConfigRemoteDB();
    private String driver, url, username, password, dbname;
    private Map prop;
    private Connection remotecon = null;
    private Connection localcon = null;

    private static DataBaseManagement dbm = new DataBaseManagement();

    private DataBaseManagement() {
        try {

            prop = properties.getRemotePropValues();

            driver = (String) prop.get("driver");
            url = (String) prop.get("url");
            username = (String) prop.get("username");
            password = (String) prop.get("password");
            dbname = (String) prop.get("dbname");
            Class.forName((String) prop.get("driver"));
            remotecon = DriverManager.getConnection(url, username, password);
            // con = DriverManager.getConnection("jdbc:mysql://sql5.freesqldatabase.com:3306/sql590954?relaxAutoCommit=true&characterEncoding=utf-8&characterSetResults=utf-8", "sql590954", "cU6*nL4*");
        } catch (Exception e) {
            System.out.println(e);
        }

        try {

            prop = properties.getSystemPropValues();

            driver = (String) prop.get("driver");
            url = (String) prop.get("url");
            username = (String) prop.get("username");
            password = (String) prop.get("password");
            dbname = (String) prop.get("dbname");
            Class.forName((String) prop.get("driver"));
            localcon = DriverManager.getConnection(url, username, password);
            // con = DriverManager.getConnection("jdbc:mysql://sql5.freesqldatabase.com:3306/sql590954?relaxAutoCommit=true&characterEncoding=utf-8&characterSetResults=utf-8", "sql590954", "cU6*nL4*");
        } catch (Exception e) {
            System.out.println(e);
        }

    }

    public static DataBaseManagement getInstance() {
        return dbm;
    }

    public Connection setConnetctionRemote() {

        return remotecon;
    }

    public Connection setConnetctionLocal() {

        return localcon;
    }

    public ResultSet getResult(String query, Connection con) {
        try {
            state = con.createStatement();
            result = state.executeQuery(query);

        } catch (Exception e) {
            System.out.println(e);
        }
        return result;
    }

    public String getDbname() {
        return dbname;
    }

}
