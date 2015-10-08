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
            <div class="col-lg-12">

                <div class="col-lg-4 middle col-lg-offset-4"><img src="./images/Banner.png;" width="100%" /></div>

            </div>
            <div class="col-lg-12  content">
                <div class="col-lg-12 kpi_container">
                    <form action="" method="post" enctype="multipart/form-data">
                        <div class='form-group  col-lg-offset-5' id="uploardbutton">
                            <div class="fileUpload btn btn-primary">
                                <span>Upload your  Data Sheet</span>
                                <input  name="excel_file" accept=".xlsm" type="file" class="upload" class=" bnt btn-upload btn-success  " value="Upload" onchange="angular.element(this).scope().fileChanged(this.files);" required="true" />
                            </div>

                        </div>
                        <div class="form-group" id="arrowofexcelupload">
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
                                <div class="text-uppercase col-lg-offset-2 col-lg-4">
                                    <table class="table-hover">
                                        <tbody class="col-lg-4">
                                        <div ng-repeat="kpi in kpiName">
                                            <div class="kpi_lists" >{{kpi}}
                                            </div>

                                        </div>
                                        </tbody>
                                    </table>
                                </div>
                                <div >
                                <div class="col-lg-offset-4">
                                    <input type="submit"  value="Conform the Datasheet" class=" btn btn-primary btn-confrom "   ng-click="confrom()">
                                    <svg class="progress-circle" width="70" height="70"><path d="m35,2.5c17.955803,0 32.5,14.544199 32.5,32.5c0,17.955803 -14.544197,32.5 -32.5,32.5c-17.955803,0 -32.5,-14.544197 -32.5,-32.5c0,-17.955801 14.544197,-32.5 32.5,-32.5z"/></svg>
                                    <svg class="checkmark" width="70" height="70"><path d="m31.5,46.5l15.3,-23.2"/><path d="m31.5,46.5l-8.5,-7.1"/></svg>
                                    <svg class="cross" width="70" height="70"><path d="m35,35l-9.3,-9.3"/><path d="m35,35l9.3,9.3"/><path d="m35,35l-9.3,9.3"/><path d="m35,35l9.3,-9.3"/></svg>
                                </div>
                                </div>





                            </div>


                        </div>
                    </form>

                    <div>
                        <!-- progress button 
                        <div class="progress-button elastic">
                            <button><span>Submit</span></button>
                            <svg class="progress-circle" width="70" height="70"><path d="m35,2.5c17.955803,0 32.5,14.544199 32.5,32.5c0,17.955803 -14.544197,32.5 -32.5,32.5c-17.955803,0 -32.5,-14.544197 -32.5,-32.5c0,-17.955801 14.544197,-32.5 32.5,-32.5z"/></svg>
                            <svg class="checkmark" width="70" height="70"><path d="m31.5,46.5l15.3,-23.2"/><path d="m31.5,46.5l-8.5,-7.1"/></svg>
                            <svg class="cross" width="70" height="70"><path d="m35,35l-9.3,-9.3"/><path d="m35,35l9.3,9.3"/><path d="m35,35l-9.3,9.3"/><path d="m35,35l9.3,-9.3"/></svg>
                        </div>
                       
                        <div class="progress-button elastic">
                            <button><span>Submit</span>
                             <input  name="excel_file" accept=".xlsx" type="file" class="upload" class=" bnt btn-upload btn-success  " value="Upload" onchange="angular.element(this).scope().fileChanged(this.files);" required="true" />
                            </button>
                            <svg class="progress-circle" width="70" height="70"><path d="m35,2.5c17.955803,0 32.5,14.544199 32.5,32.5c0,17.955803 -14.544197,32.5 -32.5,32.5c-17.955803,0 -32.5,-14.544197 -32.5,-32.5c0,-17.955801 14.544197,-32.5 32.5,-32.5z"/></svg>
                            <svg class="checkmark" width="70" height="70"><path d="m31.5,46.5l15.3,-23.2"/><path d="m31.5,46.5l-8.5,-7.1"/></svg>
                            <svg class="cross" width="70" height="70"><path d="m35,35l-9.3,-9.3"/><path d="m35,35l9.3,9.3"/><path d="m35,35l-9.3,9.3"/><path d="m35,35l9.3,-9.3"/></svg>
                        </div> progress-button 
                        -->
                    </div>



                </div>




            </div>

        </div>
    </body>

    <script>
        [].slice.call(document.querySelectorAll('.progress-button')).forEach(function (bttn, pos) {
            new UIProgressButton(bttn, {
                callback: function (instance) {
                    var progress = 0,
                            interval = setInterval(function () {
                                progress = Math.min(progress + Math.random() * 0.1, 1);
                                instance.setProgress(progress);

                                if (progress === 1) {
                                    instance.stop(pos === 1 || pos === 3 ? -1 : 1);
                                    clearInterval(interval);
                                }
                            }, 150);
                }
            });
        });
    </script>
</html>
