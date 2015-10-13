/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.remotedbaccess;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

/**
 *
 * @author Hasitha
 */
public class ConfigRemoteDB {

    String result = "";
    InputStream inputStream;

    public Map getRemotePropValues() throws IOException {
        Map m1 = null;
        try {
            Properties prop = new Properties();
            String propFileName = "remotedb.properties";

            inputStream = getClass().getClassLoader().getResourceAsStream(propFileName);

            if (inputStream != null) {
                prop.load(inputStream);
            } else {
                throw new FileNotFoundException("property file '" + propFileName + "' not found in the classpath");
            }

            
            String driver = prop.getProperty("jdbc.driverClassName");
            String url = prop.getProperty("jdbc.url");
            String username = prop.getProperty("jdbc.username");
            String password = prop.getProperty("jdbc.password");
            String dbname = prop.getProperty("jdbc.dbname");
            m1 = new HashMap();
            m1.put("driver", driver);
            m1.put("url", url);
            m1.put("username", username);
            m1.put("password", password);
            m1.put("dbname", dbname);
        } catch (Exception e) {
            System.out.println("Exception: " + e);
        } finally {
            inputStream.close();
        }
        return m1;
    }
    
    public Map getSystemPropValues() throws IOException {
        Map m1 = null;
        try {
            Properties prop = new Properties();
            String propFileName = "application.properties";

            inputStream = getClass().getClassLoader().getResourceAsStream(propFileName);

            if (inputStream != null) {
                prop.load(inputStream);
            } else {
                throw new FileNotFoundException("property file '" + propFileName + "' not found in the classpath");
            }

            
            String driver = prop.getProperty("jdbc.driverClassName");
            String url = prop.getProperty("jdbc.url");
            String username = prop.getProperty("jdbc.username");
            String password = prop.getProperty("jdbc.password");
            String dbname = prop.getProperty("jdbc.dbname");
            m1 = new HashMap();
            m1.put("driver", driver);
            m1.put("url", url);
            m1.put("username", username);
            m1.put("password", password);
            m1.put("dbname", dbname);
        } catch (Exception e) {
            System.out.println("Exception: " + e);
        } finally {
            inputStream.close();
        }
        return m1;
    }
}
