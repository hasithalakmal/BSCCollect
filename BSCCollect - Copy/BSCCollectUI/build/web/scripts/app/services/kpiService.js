(function (angular) {
    angular.module('bcsCollectControllers').service('kpiService', function (ajaxService) {
        var self = this;

        self.confrom = function (data, callback) {
            return ajaxService.post({
                url: 'http://localhost:8080/BSCCollect/metricdata/',
                data: data,
                dataType: 'json',
                contentType: 'application/json;'
            }).done(function (result) {
                if (typeof callback === "function")
                    callback(result);
                    console.log(result);
                    alert(result);
            });
        };

    });



})(angular);

