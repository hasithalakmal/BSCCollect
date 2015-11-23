/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.dao;

import com.bsc.collect.model.NotificationMsg;
import java.util.List;

/**
 *
 * @author Hasitha
 */
public interface NotificationMsgDao {
    public List getNotificationMsg(NotificationMsg notificationMsg);
}
