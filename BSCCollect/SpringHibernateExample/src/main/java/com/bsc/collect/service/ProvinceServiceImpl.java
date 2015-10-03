package com.bsc.collect.service;

import com.bsc.collect.dao.ProvinceDao;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bsc.collect.model.Province;

@Service("provinceService")
@Transactional
public class ProvinceServiceImpl implements ProvinceService {

    @Autowired
    private ProvinceDao dao;

    public Province findById(int id) {
        return dao.findById(id);
    }

    public void saveProvince(Province province) {
        dao.saveProvince(province);
    }

    /*
     * Since the method is running with Transaction, No need to call hibernate update explicitly.
     * Just fetch the entity from db and update it with proper values within transaction.
     * It will be updated in db once transaction ends. 
     */
    public void updateProvince(Province province) {
        Province entity = dao.findById(province.getProvince_id());
        if (entity != null) {
          
            entity.setProvince_name(province.getProvince_name());

        }
    }

    public void deleteProvinceByName(String province) {
        dao.deleteProvince(province);
    }

    public List<Province> findAllProvince() {
        return dao.findAllProvince();
    }

    public Province findProvinceByName(String name) {
        return dao.findProvinceByName(name);
    }

    public boolean isProvinceNameUnique(Integer id, String name) {
        Province province = findProvinceByName(name);
        return (province == null || ((id != null) && (province.getProvince_id()== id)));
    }

    
    public boolean isProvinceExist(Province province) {
        return findProvinceByName(province.getProvince_name())!=null;
    }

    public List<Province> MyTest() {
        return dao.MyTest();
    }

    
}
