/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.controller;

import com.bsc.collect.model.NotificationMsg;
import com.bsc.collect.service.NotificationMsgService;
import com.bsc.collect.service.ProvinceService;
import java.util.Calendar;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Hasitha
 */
@RestController
public class NotificationMsgRestController {
    @Autowired
    NotificationMsgService notificationMsgService;
    ProvinceService provinceService;

    @RequestMapping(value = "/messageReminder/", method = RequestMethod.GET)
    public void getmessage() {
        
        for(int i=1;i<13;i++){

       // List<InsertedMetricData> metricData = insertedMetricDataService.findAllInsertedMetricData();
        NotificationMsg notificationMsg = new NotificationMsg();
        
        int month = Calendar.getInstance().get(Calendar.MONTH)+1;
        month = i;
        System.out.println("Month is = "+month);
        
     
       // notificationMsg.setPrivincename("NWP");
        notificationMsg.setMonthofnotidied(month);
        notificationMsgService.getMsg(notificationMsg);
       // return new ResponseEntity<List<InsertedMetricData>>(metricData, HttpStatus.OK);
        }
        
    }
    
    
    @RequestMapping(value = "/messagelateNotification/", method = RequestMethod.GET)
    public void getLateNotification() {

       // List<InsertedMetricData> metricData = insertedMetricDataService.findAllInsertedMetricData();
        NotificationMsg notificationMsg = new NotificationMsg();
        
        int month = Calendar.getInstance().get(Calendar.MONTH)+1;
       
        System.out.println("Month is = "+month);
        
     //   List<Province> province = provinceService.findAllProvince();
      /*  for(int i=0;i<province.size();i++){
            String proname = province.get(i).getProvince_name();
            System.out.println("Province "+province);
        }*/
        
      /*  ProvinceDao pd = new ProvinceDaoImpl();
        List<Province> x = pd.findAllProvince();*/
        notificationMsg.setPrivincename("NWP");
        notificationMsg.setMonthofnotidied(month);
        System.out.println("adooooooo :"+notificationMsg.getMonthofnotidied());
        notificationMsgService.getLateMsg(notificationMsg);
       // return new ResponseEntity<List<InsertedMetricData>>(metricData, HttpStatus.OK);
        
    }
    
}
