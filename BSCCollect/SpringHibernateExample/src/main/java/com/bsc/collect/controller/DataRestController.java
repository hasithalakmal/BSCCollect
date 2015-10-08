/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.controller;

import com.bsc.collect.model.InsertedMetricData;
import com.bsc.collect.service.InsertedMetricDataService;
import com.bsc.collect.wrapper.InsertedMetricDataWrapper;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Hasitha
 */
@RestController
public class DataRestController {

    @Autowired
    InsertedMetricDataService insertedMetricDataService;  //Service which will do all data retrieval/manipulation work

    //-------------------Retrieve All Provinces--------------------------------------------------------
    @RequestMapping(value = "/metricdata/", method = RequestMethod.GET)
    public ResponseEntity<List<InsertedMetricData>> listAllProvince() {

        List<InsertedMetricData> metricData = insertedMetricDataService.findAllInsertedMetricData();

        System.out.println("Hello massa..." + metricData);
        return new ResponseEntity<List<InsertedMetricData>>(metricData, HttpStatus.OK);
    }

    @RequestMapping(value = "/metricdata/", method = RequestMethod.POST, consumes = "application/json", produces = "application/json")
    @ResponseBody
    public String createData(@RequestBody InsertedMetricDataWrapper insertedMetricDataWrapper) {

        String x ="{\"response\" :[";
        for (InsertedMetricData insertedMetricData : insertedMetricDataWrapper.getInsertedMetricDatas()) { 
            insertedMetricDataService.saveinsertedMetricData(insertedMetricData);
            x = x +insertedMetricData.toJason()+" , ";    
        }
        x=x+"{}]}";
        
        return x;
    }


    /*  @RequestMapping(value = "/metricdata/", method = RequestMethod.POST)
     public ResponseEntity<InsertedMetricData> createData(@RequestBody InsertedMetricData insertedMetricData, UriComponentsBuilder ucBuilder) {
       
     System.out.println("Massooo Insersion is working....");
        
     System.out.println("Creating Province " + insertedMetricData.getMetricName());*/

    /*      if (insertedMetricData.isMetricDataExist(province)) {
     System.out.println("A Province with name " + province.getProvince_name()+ " already exist");
     return new ResponseEntity<Void>(HttpStatus.CONFLICT);
     }*/

    /*       insertedMetricDataService.saveinsertedMetricData(insertedMetricData);

     HttpHeaders headers = new HttpHeaders();
     headers.setLocation(ucBuilder.path("/metricdata/{id}").buildAndExpand(insertedMetricData.getMetricName()).toUri());
     return new ResponseEntity<InsertedMetricData>(headers, HttpStatus.CREATED);
     }
     */
}
