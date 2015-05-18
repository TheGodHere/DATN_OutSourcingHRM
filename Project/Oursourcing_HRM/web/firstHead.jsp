<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Home</title>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/jquery.dataTables.css">
        <link href="css/layout-customize.css" rel="stylesheet">
        <link href="css/framework-customize.css" rel="stylesheet">
        <link href="css/Test.css" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!--<link href="css/justified-nav.css" rel="stylesheet">-->
        
        
        <!--<link rel="stylesheet" href="bootstrap-table.css">-->
        <link rel="stylesheet" href="css/bootstrap.min.css">

        
        <script src="js/OwnDesigned.js"></script>
        
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery.dataTables.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/bootstrap-table.js"></script>


        <script>
//            $(document).ready(function() {
//                $('#myTable').dataTable();
//            });
            $(document).ready(function() {
                $('#example').dataTable({
                    "pagingType": "full_numbers"
                });
                $('#empTable').dataTable({
                    "pagingType": "full_numbers"
                });
                $('#cusTable').dataTable({
                    "pagingType": "full_numbers"
                });
            });
        </script>


        <style type="text/css"></style><link rel="stylesheet" type="text/css" href="chrome-extension://lfjamigppmepikjlacjdpgjaiojdjhoj/css/menu.css">
    </head>
    <body>

        <nav class="navbar navbar-inverse navbar-fixed-top " 
             style="background-color: #00004B">
            <div>
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">Logo here</a>
                </div>
                <div id="navbar" class="navbar-collapse  ">
                    <ul class="nav navbar-nav" style="float: right; text-emphasis-color: white">
                        <b></b>
                        <li class="active"><a href="#1">Home</a></li>
                        <li><a href="#2">About</a></li>
                        <li><a href="#3">Contact</a></li>
                        <li class="dropdown">
                            <a href="#4" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                <c:set var="acc" value="${sessionScope.USERACCOUNT[0]}"/>
                                Welcome, ${acc.username}<span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#Profiles">Profile</a></li>
                                <li><a href="#">Change password</a></li>
                                <li><a href="#">Log out</a></li>
                            </ul>
                        </li>

                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>

        <div style="background-color: #06213F">

            <div class="container theme-showcase" role="main">

                <!-- Main jumbotron for a primary marketing message or call to action -->
                <div class="jumbotron-customized">
                    <img src="img/Homepage.png" alt="some_text" >                    
                </div>
            </div>



            

