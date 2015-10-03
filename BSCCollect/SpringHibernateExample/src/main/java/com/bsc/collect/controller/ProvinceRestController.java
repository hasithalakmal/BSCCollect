package com.bsc.collect.controller;

import com.bsc.collect.model.Province;
import com.bsc.collect.service.ProvinceService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

@RestController
public class ProvinceRestController {

    @Autowired
    ProvinceService provinceService;  //Service which will do all data retrieval/manipulation work

   

     //-------------------Retrieve Test Provinces--------------------------------------------------------
    @RequestMapping(value = "/test/", method = RequestMethod.GET)
    public ResponseEntity<List<Province>> Mytest() {

        List<Province> province = provinceService.MyTest();

        System.out.println("Hello massa..." + province);
        return new ResponseEntity<List<Province>>(province, HttpStatus.OK);
    }
    
     //-------------------Retrieve All Provinces--------------------------------------------------------
    @RequestMapping(value = "/province/", method = RequestMethod.GET)
    public ResponseEntity<List<Province>> listAllProvince() {

        List<Province> province = provinceService.findAllProvince();

        System.out.println("Hello massa..." + province);
        return new ResponseEntity<List<Province>>(province, HttpStatus.OK);
    }
    
    //-------------------Retrieve Single Province--------------------------------------------------------
    @RequestMapping(value = "/province/{province_name}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Province> getProvince(@PathVariable("province_name") String province_name) {
        System.out.println("Fetching Province with id " + province_name);
        Province province = provinceService.findProvinceByName(province_name);
        if (province == null) {
            System.out.println("Province with id " + province_name + " not found");
            return new ResponseEntity<Province>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<Province>(province, HttpStatus.OK);
    }

    //-------------------Create a Province--------------------------------------------------------
    @RequestMapping(value = "/province/", method = RequestMethod.POST)
    public ResponseEntity<Void> createProvince(@RequestBody Province province, UriComponentsBuilder ucBuilder) {
        System.out.println("Creating Province " + province.getProvince_name());

        if (provinceService.isProvinceExist(province)) {
            System.out.println("A Province with name " + province.getProvince_name()+ " already exist");
            return new ResponseEntity<Void>(HttpStatus.CONFLICT);
        }

        provinceService.saveProvince(province);

        HttpHeaders headers = new HttpHeaders();
        headers.setLocation(ucBuilder.path("/province/{id}").buildAndExpand(province.getProvince_id()).toUri());
        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
    }

    //------------------- Update a User --------------------------------------------------------
    @RequestMapping(value = "/province/{id}", method = RequestMethod.PUT)
    public ResponseEntity<Province> updateProvince(@PathVariable("province_name") String province_name, @RequestBody Province province) {
        System.out.println("Updating User " + province_name);

        Province currentProvince = provinceService.findProvinceByName(province_name);

        if (currentProvince == null) {
            System.out.println("Province with id " + province_name + " not found");
            return new ResponseEntity<Province>(HttpStatus.NOT_FOUND);
        }

        currentProvince.setProvince_id(province.getProvince_id());
     

        provinceService.updateProvince(currentProvince);
        return new ResponseEntity<Province>(currentProvince, HttpStatus.OK);
    }

    //------------------- Delete a Province --------------------------------------------------------
    @RequestMapping(value = "/province/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<Province> deleteProvince(@PathVariable("province_name") String province_name) {
        System.out.println("Fetching & Deleting Province with id " + province_name);

        Province province = provinceService.findProvinceByName(province_name);
        if (province == null) {
            System.out.println("Unable to delete. Province with id " + province_name + " not found");
            return new ResponseEntity<Province>(HttpStatus.NOT_FOUND);
        }

        provinceService.deleteProvinceByName(province_name);
        return new ResponseEntity<Province>(HttpStatus.NO_CONTENT);
    }

    

}
