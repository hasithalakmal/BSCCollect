/* global angular */
(function(angular, $) {
    angular.module('myApp').service('ajaxService', function() {
    var self = this; 
        var BASE_URL = 'http://localhost:8080/BSCCollect/';
        self.get = function (options) {
            console.log(options);
            options.type = 'get';
            options.url = BASE_URL +options.url;
            return $.ajax(options);
        };
        self.post = function (options) {
            options.type = 'post';
            options.url = BASE_URL +options.url;
            return $.ajax(options);
        };
        self.delete = function (options) {
            options.type = 'delete';
            options.url = BASE_URL +options.url;
            return $.ajax(options);
        };
        self.put = function (options) {
            options.type = 'put';
            options.url = BASE_URL +options.url;
            return $.ajax(options);
        };
    });
})(angular, jQuery);