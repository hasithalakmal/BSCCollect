(function (angular) {
     angular.module('bcsCollectControllers').controller("loginController", ['$scope', 'loginService','$location',
        function ($scope, loginService,$location) {
        $scope.username ="";
        $scope.password ="";
        $scope.loginf = true;
        
        if($location.path()==""){
           $scope.loginf = false; 
       }
       
            $scope.login = function () {
                var obj =
                        {
                            "username": $scope.username,
                            "password": $scope.password
                        };
                        
                loginService.login(angular.toJson(obj)).then(function (data) {
                    var d = data;
                    console.log(data);
                    if (data==='{"isvalid":"valid login","type":"adm"}'){
                        $location.path('/admin');
                        $scope.loginf = true;
                        $scope.username ="";
                        $scope.password ="";
                        if (!$scope.$$phase)
                        $scope.$apply();
                    }
                    else if (data==='{"isvalid":"valid login","type":"com"}'){
                        $location.path('/upload');
                        $scope.loginf = true;
                        $scope.username ="";
                        $scope.password ="";
                        if (!$scope.$$phase)
                        $scope.$apply();
                    }else{
                        swal('Wrong login');
                    }
                    
                    if (!$scope.$$phase)
                        $scope.$apply();
                    
                    
                });

            };
        
        
        
        }]);

    
    
})(angular);
