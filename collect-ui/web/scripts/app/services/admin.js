(function (angular) {
    angular.module('bcsCollectControllers').service('adminService', function (ajaxService) {
        var self = this;
        
     self.confirm = function (data, callback) {
         alert('messa');
            return ajaxService.post({
                url: 'structure/',
                data:data,
                dataType: 'json',
                contentType:'application/json;'
            }).done(function (result) {
                if (typeof callback === "function")
                    callback(result);
                   // alert(result);
            }).error(function (error) {
               if (typeof callback === "function")
                    callback(error);
                   
            });
        };
        
     self.insertReg = function (data, callback) {
            return ajaxService.post({
                url: 'userdata/ ',
                data:data,
                dataType: 'json',
                contentType:'application/json;'
            }).done(function (result) {
                 
                if (typeof callback === "function")
                    callback(result);
                   // alert(result);
            }).error(function (error) {
               if (typeof callback === "function")
                    callback(error);
                   
            });
        }; 
        
        
   
         self.getProvinces = function (data, callback) {
            return ajaxService.get({
                url: 'province/',
                data:data,
                dataType: 'json',
                contentType:'application/json;'
            }).done(function (result) {
                if (typeof callback === "function")
                    callback(result);
                   // alert(result);
            }).error(function (error) {
               if (typeof callback === "function")
                    callback(error);
                   
            });
        };
        
        self.getuserbyid = function (data, callback) {
            return ajaxService.get({
                url: 'userdataone/'+data,
                data:data,
                dataType: 'json',
                contentType:'application/json;'
            }).done(function (result) {
                if (typeof callback === "function")
                    callback(result);
                   // alert(result);
            }).error(function (error) {
               if (typeof callback === "function")
                    callback(error);
                   
            });
        };
        self.getUser = function (data, callback) {
            return ajaxService.get({
                url: 'userdata/',
                data:data,
                dataType: 'json',
                contentType:'application/json;'
            }).done(function (result) {
                if (typeof callback === "function")
                    callback(result);
                   // alert(result);
            }).error(function (error) {
               if (typeof callback === "function")
                    callback(error);
                   
            });
        }; 
        
        self.deleteUser = function (data, callback) {
            return ajaxService.delete({
                url: 'userdata/',
                data:data,
                dataType: 'json',
                contentType:'application/json;'
            }).done(function (result) {
                if (typeof callback === "function")
                    callback(result);
                   // alert(result);
            }).error(function (error) {
               if (typeof callback === "function")
                    callback(error);
                   
            });
        };
        
        self.putUser = function (data, callback) {
            return ajaxService.put({
                url: 'userdata/',
                data:data,
                dataType: 'json',
                contentType:'application/json;'
            }).done(function (result) {
                if (typeof callback === "function")
                    callback(result);
                   // alert(result);
            }).error(function (error) {
               if (typeof callback === "function")
                    callback(error);
                   
            });
        };
    
    });
        


})(angular);

