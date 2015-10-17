(function (angular) {
    angular.module('bcsCollectControllers').service('adminService', function (ajaxService) {
        var self = this;
        
     self.confrom = function (data, callback) {
            return ajaxService.post({
                url: 'http://localhost:8080/SpringHibernateExample/structure/',
                data:data,
                dataType: 'json',
                contentType:'application/json;'
            }).done(function (result) {
                if (typeof callback === "function")
                    callback(result);
                   // alert(result);
            });
        };
    
    });
        


})(angular);

