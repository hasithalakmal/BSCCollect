/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.controller;

import com.bsc.collect.remotedbaccess.TrancferData;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Hasitha
 */
@RestController
public class BSCConnectRestController {

    //-------------------Retrieve Test Provinces--------------------------------------------------------
    @RequestMapping(value = "/bscconnect/", method = RequestMethod.GET)
    public void Tranfrerdatatoconnect() {
        TrancferData td = new TrancferData();
        td.transferdata();
        System.out.println("ok");
    }

}
