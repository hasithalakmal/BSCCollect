/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.service;

import com.bsc.collect.dao.NotificationMsgDao;
import com.bsc.collect.dao.ProvinceDao;
import com.bsc.collect.model.NotificationMsg;
import com.bsc.collect.model.Province;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Hasitha
 */
@Service("notificationMsgService")
@Transactional
public class NotificationMsgServiceImpl implements NotificationMsgService{
    @Autowired
    private NotificationMsgDao dao;
    private ProvinceDao dao2;

    public List getMsg(NotificationMsg notificationMsg) {
       
        return dao.getNotificationMsg(notificationMsg);
    }
    
}
