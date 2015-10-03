'use strict';
(function (angular) {
    angular.module('bcsCollectControllers').controller("PreviewController",
            function ($scope, XLSXReaderService, kpiService) {
                $scope.showPreview = false;
                $scope.showJSONPreview = true;
                $scope.json_string = "";
                $scope.json_test = "";
                $scope.KPIData = [];
                $scope.kpiName =[];
                $scope.isProcessing = false;
                $scope.fileChanged = function (files) {
                    $scope.sheets = [];
                    $scope.v = 0;
                    $scope.excelFile = files[0];
                    XLSXReaderService.readFile($scope.excelFile, $scope.showPreview, $scope.showJSONPreview).then(function (xlsxData) {
                        $scope.sheets = xlsxData.sheets;
                        var kpi = $scope.sheets;
                        $scope.kpiName =[];
                        angular.forEach(kpi, function (kpiD , k) {
                            var kpiName = k;
                            $scope.kpiName.push(k);
                            console.log(k);
                            angular.forEach(kpiD, function (data) {
                                var metric = data.MetricName;
                                
                                angular.forEach(data, function (d, k) {
                                    var Dvalue = k; //asing the date 
                                    var date = "";
                                    var Kvalue = d; //asing dd value
                                    if (Dvalue !== "MetricName") {
                                        date = Dvalue;
                                    }
                                    var kpiObject = {
                                        "kpiName": kpiName,
                                        "metricName": metric,
                                        "date": date,
                                        "value": Kvalue
                                    };
                                    // check all cell values were define, 
                                    if ((kpiObject.date !== "") && (kpiObject.value !== "") && (typeof kpiObject.metricName === 'string')) {
                                        $scope.KPIData.push(kpiObject);
                                        
                                    }
                                });
                                
                            });
                           
                        });
                        $scope.v += 150;
                      //  $scope.isProcessing = false;
                       // console.log($scope.KPIData.length);
                         if($scope.KPIData.length > 0){
                        $scope.isProcessing = true;
                        }
                        
                    });
                };

           /*     $scope.updateJSONString = function () {
                    $scope.KPIData = [];
                    $scope.json_string = JSON.stringify($scope.sheets[$scope.selectedSheetName]);
                    $scope.kpidata = $scope.sheets[$scope.selectedSheetName];
                    var k = $scope.kpidata;
                    var kpi = $scope.kpidata;
                    angular.forEach(kpi, function (data) {
                        var metric = data.MetricName;
                      
                        angular.forEach(data, function (d, k) {
                            var Dvalue = k; //asing the date 
                            var date = "";
                            var Kvalue = d; //asing dd value
                            if (Dvalue !== "MetricName") {
                                date = Dvalue;
                            }
                            var kpiObject = {
                                "kpiName": $scope.selectedSheetName,
                                "metricName": metric,
                                "date": date,
                                "value": Kvalue
                            };
                            // check all cell values were define, 
                            if ((kpiObject.date !== "") && (kpiObject.value !== "") && (typeof kpiObject.metricName === 'string')) {
                                //$scope.KPIData.push(kpiObject);
                            }
                        });

                    });
                    console.log($scope.KPIData);

                };

*/
                function reset (){
                    $scope.isProcessing = false;
                };
                $scope.KPITable = {
                    data: 'KPIData',
                    totalServerItems: 'totalServerItems',
                    pagingOptions: $scope.pagingOptions,
                    filterOptions: $scope.filterOptions
                };

                $scope.showPreviewChanged = function () {
                    
                    if ($scope.showPreview) {
                        $scope.showJSONPreview = false;
                        XLSXReaderService.readFile($scope.excelFile, $scope.showPreview, $scope.showJSONPreview).then(function (xlsxData) {
                            $scope.sheets = xlsxData.sheets;
                            
                        });
                    }
                };
                
               
                $scope.confrom = function () {
                    
                    var obj = $scope.KPIData;
                    //console.log(angular.toJson(obj));
                    kpiService.confrom(angular.toJson(obj)).then(function (data) {
                        var d = data;
                        console.log( $scope.KPIData);
                        reset();
                        console.log( $scope.KPIData);
                         
                        if (!$scope.$$phase)
                            $scope.$apply();
                         $scope.KPIData = [];
                       
                        
                    });
                    reset();
                   
                };
                
               


            });
})(angular);