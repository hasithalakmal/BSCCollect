/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.service;

import com.bsc.collect.dao.StructureDataDao;
import com.bsc.collect.model.StructureData;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Hasitha
 */
@Service("structureDataService")
@Transactional
public class StructureDataServiceImpl implements StructureDataService {

    @Autowired
    private StructureDataDao dao;

    public List<StructureData> findAllStructureData() {
        return dao.findAllStructureData();
    }

    public void savestructureData(StructureData structureData) {
        dao.saveStructureData(structureData);
    }
}
