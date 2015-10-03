(function (angular) {
     angular.module('bcsCollectControllers').controller("loginController", ['$scope', 'loginService',
        function ($scope, loginService) {
        $scope.username ="";
        $scope.password ="";
        $scope.User = [];
            $scope.login = function () {
                
                var user =
                        {
                            "username": $scope.username,
                            "password": $scope.password
                        };
                        
                 $scope.User.push(user);
                 
                 var obj = $scope.User;
                        alert('Login Success'+user);
                loginService.login(angular.toJson(obj)).then(function (data) {
                    var d = data;
                    if (!$scope.$$phase)
                        $scope.$apply();
                    
                    
                    
                });

            };
        
        
        
        }]);

    
    
})(angular);
