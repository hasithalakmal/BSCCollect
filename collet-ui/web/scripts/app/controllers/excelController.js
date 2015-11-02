'use strict';
(function (angular) {
    angular.module('bcsCollectControllers').controller("PreviewController",
            function ($scope, XLSXReaderService, kpiService) {
                $scope.showPreview = false;
                $scope.showJSONPreview = true;
                $scope.json_string = "";
                $scope.json_test = "";
                $scope.KPIData = [];
                $scope.kpiName = [];
                $scope.kpiNamemodel = [];
                $scope.isProcessing = false;
                $scope.status = [];
                $scope.errors = [];
                $scope.showStatus = false;
                $scope.Selectedkpi = [];
                $scope.upload = true;
                $scope.success = true;
                $scope.loginf = true;
                $scope.errorCount = 0;
                $scope.errorMessag = true;


                $scope.newstatus = [];


                $scope.uploadtrue = function () {
                    //  $location.path('/upload');
                    window.location.reload();
                };
                $scope.fileChanged = function (files) {
                    $scope.sheets = [];
                    $scope.v = 0;
                    $scope.excelFile = files[0];
                    XLSXReaderService.readFile($scope.excelFile, $scope.showPreview, $scope.showJSONPreview).then(function (xlsxData) {
                        $scope.sheets = xlsxData.sheets;
                        var kpi = $scope.sheets;
                        $scope.kpiName = [];
                        angular.forEach(kpi, function (kpiD, k) {
                            var kpiName = k;
                            var d = {
                                id: k,
                                label: k
                            };
                            $scope.kpiName.push(d);
                            angular.forEach(kpiD, function (data) {
                                var metric = data.MetricName;

                                angular.forEach(data, function (d, k) {
                                    var Dvalue = k; //asing the date 
                                    var date = "";
                                    var fdate = "";
                                    var Kvalue = d; //asing dd value
                                    if (Dvalue !== "MetricName") {
                                        date = Dvalue;
                                        var spdate = String(date).split("/");
                                        var yyyy = spdate[2];
                                        var mm = spdate[0];
                                        var dd = spdate[1];
                                        //  console.log(yyyy+'/'+mm +'/'+dd);

                                        fdate = (yyyy + '/' + mm + '/' + dd);

                                    }
                                    var kpiObject = {
                                        "kpiName": kpiName,
                                        "metricName": metric,
                                        "date": fdate,
                                        "value": Kvalue
                                    };
                                    // check all cell values were define, 
                                    if ((kpiObject.date !== "") && (kpiObject.value !== "") && (typeof kpiObject.metricName === 'string')) {
                                        $scope.KPIData.push(kpiObject);


                                    }
                                });

                            });

                        });
                        console.log($scope.KPIData);
                        $scope.v += 150;

                        //  $scope.isProcessing = false;
                        // console.log($scope.KPIData.length);
                        if ($scope.KPIData.length > 0) {
                            $scope.isProcessing = true;
                            $scope.upload = false;
                        }


                    });
                };


                $scope.kpiStatus = {
                    data: 'errors',
                    columnDefs: [
                        {field: 'metricName', width: '50%', displayName: 'Metric Name', enableCellEdit: true, cellTemplate: '<div ng-class="{red: row.entity.reason === \'Metric is not defined. Pleace check the new excel template\' || row.entity.reason === \'User is not defined. Pleace log in as collect user\' }"><div class="ngCellText" >{{row.getProperty(col.field)}}</div></div>'},
                        {field: 'date', width: '10%', displayName: 'Date'},
                        {field: 'value', width: '10%', displayName: 'Value', enableCellEdit: true, cellTemplate: '<div ng-class="{yellow: row.entity.reason === \'value is too low - data is updated\' || row.entity.reason === \'value is too High - data is updated\' ||  row.entity.reason === \'value is too low - data is inserted\' || row.entity.reason === \'value is too High - data is updated\'}"><div class="ngCellText" >{{row.getProperty(col.field)}}</div></div>'},
                        {field: 'reason', displayName: 'Status', enableCellEdit: false
                        }],
                };

                function reset() {
                    $scope.isProcessing = false;
                    $scope.loginf = true;
                }
                ;


                $scope.KPITable = {
                    data: 'KPIData',
                    totalServerItems: 'totalServerItems',
                    pagingOptions: $scope.pagingOptions,
                    filterOptions: $scope.filterOptions
                };

                $scope.checkStatus = function () {
                    var status = $scope.status;
                    var errorCount = 0;
                    angular.forEach(status, function (d) {


                    });
                    if (errorCount > 0) {
                        $scope.showStatus = true;
                    }
                };

                $scope.showPreviewChanged = function () {

                    if ($scope.showPreview) {
                        $scope.showJSONPreview = false;
                        XLSXReaderService.readFile($scope.excelFile, $scope.showPreview, $scope.showJSONPreview).then(function (xlsxData) {
                            $scope.sheets = xlsxData.sheets;

                        });
                    }
                };


                $scope.forcSubmit = function () {
                    var d = $scope.errors;
                    $scope.newstatus = [];
                    angular.forEach(d, function (k) {
                        var data = {
                            "kpiName": k.kpiName,
                            "metricName": k.metricName,
                            "date": k.date,
                            "value": k.value
                        };
                        $scope.newstatus.push(data);
                        if (!$scope.$$phase)
                            $scope.$apply();

                    });


                    var obj = {
                        "insertedMetricDatas": $scope.newstatus
                    };
                    console.log(obj);
                    kpiService.confrom(angular.toJson(obj)).then(function (data) {
                        var s = data.response;
                        var errorCount = 0;
                        $scope.errors = [];
                        angular.forEach(s, function (d) {
                            $scope.status.push(d);
                            console.log(d);
                            if ((d.reason === 'Metric is not defined. Pleace check the new excel template')
                                    || (d.reason === 'User is not defined. Pleace log in as collect user')) {
                                errorCount += 1;
                                $scope.errors.push(d);
                                if (!$scope.$$phase)
                                    $scope.$apply();
                                console.log(d.reason);
                            }

                        });

                        if (errorCount > 0) {
                            $scope.showStatus = true;
                            $scope.success = true;


                        } else {
                            kpiService.confromRemote();
                            $scope.showStatus = false;
                            $scope.loginf = true;
                            $scope.success = false;
                            $scope.status = [];


                        }
                        //    console.log($scope.status);

                        $scope.upload = false;

                        if (!$scope.$$phase)
                            $scope.$apply();
                    });
                    reset();

                };

                $scope.updatereson = function () {
                    var d = $scope.errors;
                    $scope.newstatus = [];
                    angular.forEach(d, function (k) {
                        var data = {
                            "kpiName": k.kpiName,
                            "metricName": k.metricName,
                            "date": k.date,
                            "value": k.value
                        };
                        $scope.newstatus.push(data);
                        if (!$scope.$$phase)
                            $scope.$apply();

                    });


                    var obj = {
                        "insertedMetricDatas": $scope.newstatus
                    };
                    console.log(obj);
                    kpiService.confrom(angular.toJson(obj)).then(function (data) {
                        console.log(data);
                        var s = data.response;
                        var errorCount = 0;
                        $scope.errors = [];
                        angular.forEach(s, function (d) {
                            $scope.status.push(d);
                            console.log(d);
                            if ((d.reason === 'value is too low - data is updated')
                                    || (d.reason === 'value is too low - data is inserted')
                                    || (d.reason === 'value is too High - data is updated')
                                    || (d.reason === 'value is too High - data is inserted')
                                    || (d.reason === 'value is too High - same data value ignored')
                                    || (d.reason === 'value is too low - same data value ignored')
                                    || (d.reason === 'Metric is not defined. Pleace check the new excel template')
                                    || (d.reason === 'User is not defined. Pleace log in as collect user')) {
                                errorCount += 1;
                                $scope.errors.push(d);
                                if (!$scope.$$phase)
                                    $scope.$apply();
                                console.log(d.reason);
                            }


                        });
                        if (errorCount > 0) {
                            $scope.showStatus = true;
                            $scope.success = true;

                        } else {
                            kpiService.confromRemote().then(function (data) {
                                console.log(data);
                            });
                            $scope.showStatus = false;
                            $scope.loginf = true;
                            $scope.success = false;
                            $scope.status = [];



                        }
                        //    console.log($scope.status);

                        $scope.upload = false;

                        if (!$scope.$$phase)
                            $scope.$apply();
                    }), function (data) {
                        console.log(data);
                        $scope.errorMessag = false;
                    };
                    reset();

                };

                $scope.confrom = function () {

                    var obj = {
                        "insertedMetricDatas": $scope.KPIData
                    };
                    console.log(obj);
                    kpiService.confrom(angular.toJson(obj)).then(function (data) {

                        var s = data.response;
                        var errorCount = 0;
                        $scope.status = [];
                        angular.forEach(s, function (d) {
                            $scope.status.push(d);
                            console.log(d);
                            if ((d.reason === 'value is too low - data is updated')
                                    || (d.reason === 'value is too low - data is inserted')
                                    || (d.reason === 'value is too High - data is updated')
                                    || (d.reason === 'value is too High - data is inserted')
                                    || (d.reason === 'Metric is not defined. Pleace check the new excel template')
                                    || (d.reason === 'User is not defined. Pleace log in as collect user')) {
                                errorCount += 1;
                                $scope.errors.push(d);
                                console.log(d.reason);
                            }


                        });
                        if (errorCount > 0) {

                            $scope.showStatus = true;
                            $scope.success = true;


                        } else {
                            kpiService.confromRemote().then(function (data) {
                                console.log(data.responseText);
                               if (data.responseText == "success") {
                                    $scope.showStatus = false;
                                    $scope.loginf = true;
                                    $scope.success = false;
                                } else {
                                    alert("error : " + data.responseText);
                                    $scope.errorMessag = false;
                                }
                            }, function (data) {
                                console.log("error : " + data.responseText);
                                if (data.responseText == "success") {
                                    $scope.showStatus = false;
                                    $scope.loginf = true;
                                    $scope.success = false;
                                } else {
                                    alert("error : " + data.responseText);
                                    $scope.errorMessag = false;
                                }

                            });


                        }
                        //    console.log($scope.status);

                        $scope.upload = false;
                        //  console.log($scope.status);
                        reset();
                        if (!$scope.$$phase)
                            $scope.$apply();
                        $scope.KPIData = [];
                    }, function (data) {
                        $scope.errorMessag = false;
                    });
                    reset();

                };
            });
})(angular);