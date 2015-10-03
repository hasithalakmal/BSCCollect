package com.bsc.collect.service;

import java.util.List;

import com.bsc.collect.model.Province;

public interface ProvinceService {

    Province findById(int id);

    void saveProvince(Province employee);

    void updateProvince(Province employee);

    void deleteProvinceByName(String name);

    List<Province> findAllProvince();

    Province findProvinceByName(String ssn);

    boolean isProvinceNameUnique(Integer id, String ssn);

    public boolean isProvinceExist(Province province);

    public List<Province> MyTest();

}
