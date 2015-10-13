/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bsc.collect.wrapper;

import com.bsc.collect.model.StructureData;
import java.util.List;

/**
 *
 * @author Hasitha
 */
public class StructureDataWrapper {

    private List<StructureData> StructureDatas;

    /**
     * @return the persons
     */
    public List<StructureData> getStructureDatas() {
        return StructureDatas;
    }

    /**
     * @param StructureDatas the persons to set
     */
    public void setStructureDatas(List<StructureData> StructureDatas) {
        this.StructureDatas = StructureDatas;
    }
}
