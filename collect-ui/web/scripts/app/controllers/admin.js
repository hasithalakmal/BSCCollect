'use strict';
(function (angular) {
    angular.module('bcsCollectControllers').controller("AdminController",
            function ($scope, XLSXReaderService, adminService, Upload, $timeout, utilityFactory, autocompleteFactory) {
                 var main = this;
                $scope.uploadFiles = function (files, errFiles) {
                    $scope.files = files;
                    $scope.errFiles = errFiles;

                    angular.forEach(files, function (file) {
                        file.upload = Upload.upload({
                            url: 'http://localhost:8080/collet-ui/',
                            data: {file: file}
                        });

                        file.upload.then(function (response) {
                            $timeout(function () {
                                file.result = response.data;
                            });
                        }, function (response) {
                            if (response.status > 0)
                                $scope.errorMsg = response.status + ': ' + response.data;
                        }, function (evt) {
                            file.progress = Math.min(100, parseInt(100.0 *
                                    evt.loaded / evt.total));
                        });
                    });
                };

                
              
                 
                $scope.username !== ($scope.ckeckname) ;
              
                
                $scope.Uemail = {text:"me@example.com"}
                $scope.cemail = $scope.Uemail;
                
                $scope.province = {Id: "", Name: ""};
                $scope.usertype = {Id: "", Name: ""};
                $scope.phone = "";
                $scope.designation="";
                $scope.users = [];
                $scope.loading = true;
                $scope.userregform = true;




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
                $scope.success = false;
                $scope.newstatus = [];
                $scope.errorMessag = true;
                
                
                $scope.getUsers = function () {
                getUsers();
                };
                getUsers();
                function getUsers() {
                    adminService.getUser(angular.toJson()).then(function (data) {
                        $scope.users = data;
                        console.log(data);
                        if (!$scope.$$phase)
                            $scope.$apply();

                    });
                }
                ;
                
                
                $scope.checkuser = function(){
                    var  obj = $scope.username;
                    adminService.getuserbyid(obj.toString()).then(function (data,e) {
                    var d = data;
                    $scope.checkname = d.user_id;
                        $scope.$watch('username', function(newVal){
                            if(newVal===$scope.checkname){
                                ($scope.newUser.uname.$setValidity('duplicate',false));
                            }
                          });
                   
                        
                     if (!$scope.$$phase)
                        $scope.$apply();
                   
                },function (e){
                   // console.log(e.statusText);
                });
                    
                };
                
                
                $scope.EditUser = function (data){
                    console.log(data.id);
                   
                    
                        swal({
                        title: 'Edit User Details',
                        html: '',
                        showCancelButton: true,
                        closeOnConfirm: false
                    },
                             
                             
                       function (isConfirm) {
                           var obj = {
                       "id":data.id,
                       "user_id":data.user_id,
                       "user_name":$('#fullname').val(),
                       "user_type":$('#usertype').val(),
                       "phone_number":$('#phone').val(),
                       "email":$('#Uemail').val(),
                       "designation":$('#designation').val(),
                       "province_id":$('#province').val()
                   }  
                  
                            if (isConfirm) {
                                console.log(obj);
                    adminService.putUser(angular.toJson(obj)).then(function (data) {
                    var d = data;
                    getUsers();
                    if (!$scope.$$phase)
                        $scope.$apply();
                });
                       getUsers();
                    if (!$scope.$$phase)
                        $scope.$apply();
                                swal("Updated!", "Get in to the view of user", "success");
                                
                        }
                        else {
                            swal("Cancelled", "Continue the Registration :)", "success");
                        }
                    
                    });
                };
                
                
                $scope.DeleteUser = function (data) {
                    var obj = data;
                    swal({
                        title: "do you want to delet user " +data.user_id,
                        text: "You will not be able to recover this details!",
                        type: "warning",
                        showCancelButton: true,
                        confirmButtonColor: "#DD6B55",
                        confirmButtonText: "Yes, delete it!",
                        cancelButtonText: "No, cancel plx!",
                        closeOnConfirm: false,
                        closeOnCancel: false
                    },
                    function (isConfirm) {
                            if (isConfirm) {
                    
                    adminService.deleteUser(angular.toJson(obj)).then(function (data) {
                    var d = data;
                    getUsers();
                    if (!$scope.$$phase)
                        $scope.$apply();
                });
                       getUsers();
                    if (!$scope.$$phase)
                        $scope.$apply();
                                swal("Deleted!", "Get in to the view of user", "success");
                                
                        }
                        else {
                            swal("Cancelled", "Continue the Registration :)", "success");
                        }
                    
                    });
               
            };
                $scope.userTable = {
                    data: 'users',
                    columnDefs: [
                        {field: 'user_id', displayName: 'User Name', },
                        {field: 'user_name', displayName: 'Name'},
                        {field: 'phone_number', displayName: 'Phone'},
                        {field: 'email', displayName: 'Email'},
                        {field: 'designation', displayName: 'Designation'},
                        {field: 'user_type', displayName: 'User Type'},
                        {field: 'province_id', displayName: 'Province'},
                        {field: '', width: '35px', cellTemplate: '<div class="ngCellText"><button class="btn btn-danger btn-xs"  ng-click="DeleteUser(row.entity)" title="Delete">{{row.getProperty(col.field)}}<span class="glyphicon glyphicon-trash" style="margin-right: 0px;padding-right: 0px; border-right-style:none;"></span></button></div>'},
                        {field: '', width: '35px', cellTemplate: '<div class="ngCellText"><button class="btn btn-success btn-xs"  ng-click="ConformUser(row.entity.id)" title="Confirm">{{row.getProperty(col.field)}}<span class="glyphicon glyphicon-ok" style="margin-right: 0px;padding-right: 0px; border-right-style:none;"></span></button></div>'},
                        {field: '', width: '35px', cellTemplate: '<div class="ngCellText"><button class="btn btn-primary btn-xs"  ng-click="EditUser(row.entity)" title="Edit">{{row.getProperty(col.field)}}<span class="glyphicon glyphicon-edit" style="margin-right: 0px;padding-right: 0px; border-right-style:none;"></span></button></div>'},
                        {field: '', width: '35px', cellTemplate: '<div class="ngCellText"><button class="btn btn-primary btn-xs"  ng-click="ViewUser(row.entity.id)" title="View">{{row.getProperty(col.field)}}<span class="glyphicon glyphicon-open" style="margin-right: 0px;padding-right: 0px; border-right-style:none;"></span></button></div>'}

                    ]
                };


                $scope.clear = function () {
                    clearUser();
                };
                function clearUser() {
                     if ($scope.username === "" || $scope.fullname === "" || $scope.Uemail === "" || $scope.cemail === "" || $scope.usertype === "" || $scope.province === "") {
                       
                    swal({
                        title: "Are you sure?",
                        text: "You will not be able to recover this details!",
                        type: "warning",
                        showCancelButton: true,
                        confirmButtonColor: "#DD6B55",
                        confirmButtonText: "Yes, delete it!",
                        cancelButtonText: "No, cancel plx!",
                        closeOnConfirm: false,
                        closeOnCancel: false
                    },
                    function (isConfirm) {
                            if (isConfirm) {
                                $scope.username = "";
                                $scope.fullname = "";
                                $scope.Uemail = "";
                                $scope.usertype = "";
                                $scope.province = "";
                                $scope.cemail = "";
                                if (!$scope.$$phase)
                                    $scope.$apply();
                                swal("Cleard!", "Start new Registration filing", "success");

                            
                        }
                        else {
                            swal("Cancelled", "Continue the Registration :)", "success");
                        }
                    
                    });
                }
                }

                //user type 
                $scope.userTypeAutocomplete = autocompleteFactory.userTypeAutocomplete(function (current) {
                    if (utilityFactory.isDirty($scope.usertype, current)) {
                        $scope.usertype = {
                            Id: current.item.value1,
                            Name: current.item.label
                        };
                        if (!$scope.$$phase)
                            $scope.$apply();
                    }
                });
                //
                $scope.ProvincesAutocomplete = autocompleteFactory.ProvincesAutocomplete(function (current) {
                    if (utilityFactory.isDirty($scope.province, current)) {
                        $scope.province = {
                            Id: current.item.value1,
                            Name: current.item.label
                        };
                        if (!$scope.$$phase)
                            $scope.$apply();
                    }
                });
                
                $scope.userReg = function () {
                    var obj = {
                        "user_id": $scope.username,
                        "user_name": $scope.fullname,
                        "phone_number": $scope.phone.toString(),
                        "email": $scope.Uemail,
                        "designation": $scope.designation,
                        "user_type": $scope.usertype.Id,
                        "province_id": $scope.province.Id

                    };
                     $scope.userregform = false;
                     $scope.loading = false;
                      if (!$scope.$$phase)
                           $scope.$apply();
                    adminService.insertReg(angular.toJson(obj)).then(function (data) {
                      
                       
                    }, function (data) {
                        $scope.userregform = true;
                        $scope.loading = true;
                        if (!$scope.$$phase)
                           $scope.$apply();
                        console.log(data);
                        swal('User '+ data.statusText);
                                $scope.username = "";
                                $scope.fullname = "";
                                $scope.Uemail = "";
                                $scope.usertype = "";
                                $scope.province = "";
                                $scope.cemail = "";
                                $scope.designation="";
                                $scope.phone = "";
                                if (!$scope.$$phase)
                                    $scope.$apply();
                    });
                    
                    reset();

                };

                $scope.uploadtrue = function () {
                    $scope.upload = true;
                    $scope.showPreview = false;
                    $scope.showJSONPreview = true;
                    $scope.json_string = "";
                    $scope.json_test = "";
                    $scope.KPIData = [];
                    $scope.kpiName = [];
                    $scope.kpiNamemodel = [];
                    $scope.isProcessing = false;
                    $scope.status = [];
                    $scope.showStatus = false;
                    $scope.Selectedkpi = [];
                    $scope.upload = true;
                    $scope.success = false;
                    $scope.newstatus = [];
                };
                $scope.fileChanged = function (files) {
                    $scope.sheets = [];
                    $scope.v = 0;
                    $scope.excelFile = files[0];
                    var ftype = files[0].type;
                    console.log(ftype);
                    if (ftype === "application/vnd.ms-excel" || ftype === "application/vnd.ms-excel" || ftype === "application/vnd.ms-excel" || ftype === "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" || ftype === "application/vnd.openxmlformats-officedocument.spreadsheetml.template" || ftype === "application/vnd.ms-excel.sheet.macroEnabled.12" || ftype === "application/vnd.ms-excel.template.macroEnabled.12" || ftype === "application/vnd.ms-excel.addin.macroEnabled.12" || ftype === "application/vnd.ms-excel.sheet.binary.macroEnabled.12") {


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
                                   // console.log(data);
                                    var kpiObject = {
                                            "kpiName": data.kpiName,
                                            "metricName": data.metricName,
                                            "minVal": parseFloat(data.minVal),
                                            "maxVal": parseFloat(data.maxVal),
                                            "timePeriod": data.timePeriod,
                                            "provincename": data.province
                                        };
                                      $scope.KPIData.push(kpiObject);

                                });
                                               console.log( $scope.KPIData);
                                                      var  obj = {
                                                            "structureDatas":$scope.KPIData
                                                        }
                                                      
                                                      adminService.confirm(angular.toJson(obj)).then(function (data) {
                                                      console.log(data);
                                                      })
                                                    console.log(obj);
                            });
                          
                        });

                    } else {
                        swal('The file you uploaded is not an Excel file');
                    }
                };
                /* $scope.statusdata =[{"kpiName":"Distribution_loss","metricName":"Total Energy Delivered to Colombo City Via GSS during the six months.",
                 "date":"12/31/2014",
                 "value":" 52.00 ",
                 "comment":1
                 },
                 {"kpiName":"Distribution_loss",
                 "metricName":"Total Energy Delivered to Colombo City Via GSS during the six months.",
                 "date":"06/31/2015",
                 "value":" 65.00 ",
                 "comment":"Metric is not defined"
                 },
                 {"kpiName":"Distribution_loss",
                 "metricName":"Total of the Boundary Meter Readings of Colombo City during the six months.",
                 "date":"12/31/2014",
                 "value":" 53.00 ",
                 "comment":"data is updated"
                 },
                 {"kpiName":"Distribution_loss",
                 "metricName":"Total of the Boundary Meter Readings of Colombo City during the six months.",
                 "date":"06/31/2015",
                 "value":" 69.00 ",
                 "comment":"data is inserted"
                 }
                 ];
                 $scope.updateJSONString = function () {
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
                //data();

                $scope.kpiStatus = {
                    data: 'errors',
                    columnDefs: [
                        {field: 'metricName', width: '50%', displayName: 'Metric Name', enableCellEdit: true, cellTemplate: '<div ng-class="{red: row.entity.reason == \'[MND]\', green: row.getProperty(\'reason\') != [MDN]}"   ><div class="ngCellText" >{{row.getProperty(col.field)}}</div></div>'},
                        {field: 'date', width: '10%', displayName: 'Date'},
                        {field: 'value', width: '10%', displayName: 'Value', enableCellEdit: true, cellTemplate: '<div class="ngCellText"  >{{row.getProperty(col.field)}}</div>'},
                        {field: 'reason', displayName: 'Status', enableCellEdit: false
                        }]
                };

                function reset() {
                    $scope.isProcessing = false;
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

                $scope.updatereson = function () {
                    var d = $scope.status;

                    angular.forEach(d, function (k) {
                        var kpiObject = {
                            "kpiName": k.kpiName,
                            "metricName": k.metricName,
                            "minVal": k.maxVal,
                            "maxVal": k.maxVal,
                            "timePeriod": k.timePeriod
                        };

                        if ((kpiObject.kpi !== "") && (kpiObject.metric !== "") && (kpiObject.minVal !== "") && (kpiObject.maxVal !== "")) {
                            $scope.newstatus.push(kpiObject);
                        }
                    });


                    var obj = {
                        "structureDatas": $scope.newstatus
                    };
                    console.log(obj);
                    adminService.confrom(angular.toJson(obj)).then(function (data) {
                        var s = data.response;

                        //    console.log($scope.status);
                        $scope.showStatus = true;
                        $scope.upload = false;
                        if (!$scope.$$phase)
                            $scope.$apply();
                    }), function (error) {
                        console.log(error);
                        swal(error.statusText + ',Try Again Later');

                        $scope.errorMessag = false;

                    };
                    reset();

                };

                $scope.confirm = function (data) {

                    var obj = {
                        "structureDatas": data
                    };
                    console.log(obj);
                    adminService.confirm(angular.toJson(obj)).then(function (data) {
                        var s = data.response;
                        var errorCount = 0;
                        angular.forEach(s, function (d) {
                            console.log(d);
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
                            $scope.success = false;
                            

                        } else {
                            $scope.showStatus = false;
                            $scope.success = true;
                        }
                        //    console.log($scope.status);

                        $scope.upload = false;
                        //  console.log($scope.status);
                        reset();
                        if (!$scope.$$phase)
                            $scope.$apply();
                        $scope.KPIData = [];
                    }, function (error) {
                        console.log(error);
                        swal(error.statusText + ',Try Again Later');
                        $scope.errorMessag = false;
                    }
                    );
                    reset();

                };
            });
})(angular);