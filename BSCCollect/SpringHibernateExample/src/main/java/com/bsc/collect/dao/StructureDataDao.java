/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.dao;

import com.bsc.collect.model.StructureData;
import java.util.List;

/**
 *
 * @author Hasitha
 */
public interface StructureDataDao {

    List<StructureData> findAllStructureData();

    List saveStructureData(StructureData structureData);
}
