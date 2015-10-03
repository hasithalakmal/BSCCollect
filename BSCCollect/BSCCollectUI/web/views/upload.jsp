<%-- 
    Document   : upload
    Created on : Sep 17, 2015, 11:26:07 AM
    Author     : nizar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class=" body " >
        <div ng-controller="PreviewController">
            <div class="col-lg-12  content">
                <div class="h1 center-block">Collect</div>
                <div class="col-lg-12 kpi_container">
                    <form action="" method="post" enctype="multipart/form-data">
                        <div class='form-group  col-lg-offset-5'>
                            <div class="fileUpload btn btn-primary">
                                <span>Upload your  Data Sheet</span>
                                <input  name="excel_file" accept=".xlsx" type="file" class="upload" class=" bnt btn-upload btn-success  " value="Upload" onchange="angular.element(this).scope().fileChanged(this.files);" required="true" />
                            </div>

                        </div>
                        <div class="form-group">
                            <div ng-show="isProcessing">
                                <div class="col-lg-offset-6">
                                    <svg class="arrows">
                                    <path class="a1" d="M0 0 L30 32 L60 0"></path>
                                    <path class="a2" d="M0 20 L30 52 L60 20"></path>
                                    <path class="a3" d="M0 40 L30 72 L60 40"></path>
                                    <path class="a4" d="M0 60 L30 92 L60 60"></path>
                                    <path class="a5" d="M0 80 L30 112 L60 80"></path>
                                    <path class="a6" d="M0 100 L30 132 L60 100"></path>
                                    <path class="a7" d="M0 120 L30 152 L60 120"></path>
                                    <path class="a8" d="M0 140 L30 172 L60 140"></path>
                                    <path class="a9" d="M0 160 L30 192 L60 160"></path>
                                    <path class="a10" d="M0 180 L30 212 L60 180"></path>
                                    <path class="a11" d="M0 200 L30 232 L60 200"></path>
                                    </svg>
                                </div>
                                <div class="text-uppercase col-lg-offset-7  ">
                                    <table class="table-hover">
                                        <tbody class=" ">
                                        <div ng-repeat="kpi in kpiName">
                                            <div class="kpi_lists" >{{kpi}}
                                            </div>

                                        </div>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="col-lg-offset-5">
                                    <input type="submit"  value="Conform the Datasheet" class=" btn btn-primary btn-confrom "   ng-click="confrom()">
                                </div>


                                


                            </div>


                        </div>
                    </form>

                </div>




            </div>

        </div>
    </body>
</html>
