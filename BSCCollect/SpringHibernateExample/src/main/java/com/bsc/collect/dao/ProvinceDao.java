package com.bsc.collect.dao;

import java.util.List;

import com.bsc.collect.model.Province;

public interface ProvinceDao {

	Province findById(int id);

	void saveProvince(Province province);
	
	void deleteProvince(String provincename);
	
	List<Province> findAllProvince();

	Province findProvinceByName(String provincename);

    public List<Province> MyTest();



}
