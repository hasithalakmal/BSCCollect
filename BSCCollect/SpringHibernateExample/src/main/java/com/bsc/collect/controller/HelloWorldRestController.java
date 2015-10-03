package com.bsc.collect.controller;
 
import com.bsc.collect.model.Employee;
import com.bsc.collect.service.EmployeeService;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


 
@RestController
public class HelloWorldRestController {
 
    @Autowired
    EmployeeService employeeService;  //Service which will do all data retrieval/manipulation work
 
    
    //-------------------Retrieve All Users--------------------------------------------------------
     
    @RequestMapping(value = "/emp/", method = RequestMethod.GET)
    public ResponseEntity<List<Employee>> listAllUsers() {
       
        List<Employee> users = employeeService.findAllEmployees();
        
        System.out.println("Hello massa..."+users);
        return new ResponseEntity<List<Employee>>(users, HttpStatus.OK);
    }
 
 
}