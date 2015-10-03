package com.bsc.collect.dao;

import java.util.List;

import com.bsc.collect.model.Employee;

public interface DataDao {

	Employee findById(int id);

	void saveEmployee(Employee employee);
	
	void deleteEmployeeBySsn(String ssn);
	
	List<Employee> findAllEmployees();

	Employee findEmployeeBySsn(String ssn);

}