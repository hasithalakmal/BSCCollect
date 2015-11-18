/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.controller;

import com.bsc.collect.model.StructureData;
import com.bsc.collect.model.StructureData;
import com.bsc.collect.service.StructureDataService;
import com.bsc.collect.wrapper.StructureDataWrapper;
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
public class StructureRestController {

    @Autowired
    StructureDataService structureDataService;  //Service which will do all data retrieval/manipulation work

     
    
    @RequestMapping(value = "/structure/", method = RequestMethod.POST, consumes = "application/json", produces = "application/json")
    @ResponseBody
    public String createData(@RequestBody StructureDataWrapper structureDataWrapper) {
        
        String x = "{\"response\" :[";
        for (StructureData structureData : structureDataWrapper.getStructureDatas()) {
            structureDataService.savestructureData(structureData);
            x = x + structureData.toJason() + " , ";
        }
        x = x + "{}]}";

        return x;
    }
}
