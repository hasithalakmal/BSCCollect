(function (angular) {
    angular.module('bcsCollectControllers').service('loginService', function (ajaxService) {
        var self = this;


        self.login = function (data, callback) {
            console.log(data);
            return ajaxService.post({
                url: 'login/',
                data: data,
                dataType: 'text',
                contentType:'application/json;'
            }).done(function (result) {
                if (typeof callback === "function")
                    callback(result);
            });
        };


    });
})
        (angular);