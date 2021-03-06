<%-- 
    Document   : index
    Created on : Sep 17, 2015, 11:03:53 AM
    Author     : nizar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<!-- saved from url=(0043)http://getbootstrap.com/examples/dashboard/ -->
<html lang="en"ng-app="myApp" class="bg-infox`" >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="http://getbootstrap.com/favicon.ico">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,300,600,700' rel='stylesheet' type='text/css'>

        <title>BSC-Collect</title>



        <!--Style-->
        <link rel="stylesheet" href="./styles/lib/bootstrap/bootstrap.css"> 
        <link rel="stylesheet" href="./styles/lib/morris/morris.css">
        <link rel="stylesheet" href="./styles/style.css">


        <link href="./styles/lib/plugin/bootstraptab.css" rel="stylesheet">
        <link href="./styles/lib/jQueryUI/jquery-ui.css" rel="stylesheet">
        <link href="./styles/lib/plugin/navSidebar.css" rel="stylesheet">
        <link href="./styles/lib/plugin/datetimepicker.css" rel="stylesheet">
        <!--<link rel="stylesheet" type="text/css" href="http://angular-ui.github.com/ng-grid/css/ng-grid.css" />-->
        <link rel="stylesheet" href="./styles/lib/angular/ui-grid.css">
        <!--<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">-->

        <!--Style-->

        <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
        <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
        <!--<script src="./scripts/lib/ie-emulation-modes-warning.js"></script> <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->

        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->


    </head>

    <div class="content"ui-view ></div>

    <script  src="./scripts/ui.js"></script> 

    <script  src="./scripts/lib/jQuery/jquery-2.1.1.min.js"></script> 
    <script  src="./scripts/lib/jQuery/jquery.soap.js"></script>        
    <script src="./scripts/lib/bootstrap/bootstrap.min.js"></script>        
    <script src="./scripts/lib/ie10-viewport-bug-workaround.js"></script>         
    <script  src="./scripts/lib/angular/angular.min.js"></script>
    <script src="./scripts/lib/angular/angular-ui-router.js"></script> 
    <script src="./scripts/lib/angular/angular-route.js"></script>
    <script src="./scripts/lib/angular/angular-animate.min.js"></script> 
    <script src="./scripts/lib/angular/angular-messages.js"></script> 
    <script src="./scripts/lib/raphael/raphael.js"></script> 
    <script src="./scripts/lib/morris/morris.js"></script> 
    <script src="./scripts/lib/plugins/moment.js"></script> 
    <script src="./scripts/lib/plugins/ng-grid-flexible-height.js"></script> 
    <script src="./scripts/lib/plugins/datetimepicker/datetimepicker.js"></script> 
    <script src="./scripts/lib/plugins/bootstrapAngularJS/ui-bootstrap-tpls-0.11.2.min.js"></script> 
    <script src="./scripts/lib/angular/lodash.min.js"></script>
    <script src="./scripts/lib/angular/bluebird.js"></script>
    <script src="./scripts/lib/angular/angular-google-maps.min.js"></script>
    <script src="./scripts/lib/blockUI/blockUI.js"></script>
    <script  src="./scripts/lib/angular/ui-grid.js"></script>
    <script  src="./scripts/lib/jQueryUI/jquery-ui.js"></script> 
    <script  src="./scripts/lib/jQueryUI/jquery-ui-1.10.4.autocomplete.js"></script> 
    <script  src="./scripts/lib/angular/autocomplete.js"></script>
    <script  src="./scripts/lib/js-xlsx/dist/xlsx.full.min.js"></script>
    <script  src="./scripts/lib/xlsx-reader.js"></script>
    <script  src="./scripts/lib/js-xlsx/jszip.js"></script>
    <!--Library Files End-->  



    <!--Angular Controller-->

    <script  src="./scripts/app/controllers/app.js"></script>
    <script  src="./scripts/app/controllers/module.js"></script>
    <script  src="./scripts/app/controllers/excelController.js"></script>
    <script  src="./scripts/app/controllers/loginController.js"></script>




    <!--Angular Services-->

    <script  src="./scripts/app/services/ajax.js"></script>
    <script  src="./scripts/app/services/login.js"></script>
    <script  src="./scripts/app/services/kpiService.js"></script>

    <!--Angular Factories-->  
    <script  src="./scripts/app/factories/excelFactory.js"></script>

    <!-- Nice Buttons -->
    <link rel="stylesheet" type="text/css" href="./styles/lib/btn/component.css" />
    <script src="./scripts/lib/btn/modernizr.custom.js"></script>
    <script src="./scripts/lib/btn/classie.js"></script>
    <script src="./scripts/lib/btn/uiProgressButton.js"></script>


</html>

