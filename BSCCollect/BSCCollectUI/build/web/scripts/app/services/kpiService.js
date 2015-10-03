/* global $http, $q */

(function (angular) {
    angular.module('bcsCollectControllers').service('kpiService', function (ajaxService) {
        var self = this;
        var user = {"kpiName": "Distribution_loss", "metricName": "Total Energy Delivered to Colombo City Via GSS during the six months.", "date": "12/31/2014", "value": " 52.00 "};

        self.confrom = function (data, callback) {
          //  alert(data);
            //Its working for get
            /*       return ajaxService.get({
             url: 'http://localhost:8080/BSCCollect/province/',
             // data: {"kpiName":"Distribution_loss","metricName":"Total Energy Delivered to Colombo City Via GSS during the six months.","date":"12/31/2014","value":" 52.00 "},
             data: {},
             dataType: 'json'
             })*/
              var data1 =angular.toJson({"province_name": "Colombo City hgf"});
              
            return ajaxService.post({
                url: 'http://localhost:8080/BSCCollect/province/',
                data:data1 ,
                contentType: "application/json;",
                dataType: 'json'
            })
                    //Its working for post
                    /*      return ajaxService.post({
                     url: 'http://localhost:8080/BSCCollect/province/',
                     // data: {"kpiName":"Distribution_loss","metricName":"Total Energy Delivered to Colombo City Via GSS during the six months.","date":"12/31/2014","value":" 52.00 "},
                     data: [{"province_id":25,"province_name":"Colombo City - 111"}],
                     dataType: 'json'
                     })*/


                    .done(function (result) {
                        if (typeof callback === "function")
                            callback(result);
                        alert("massa");
                        alert(result);

                    });
        };

    });



})(angular);

