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

        <link href="css/layout-customize.css" rel="stylesheet">
        <link href="css/framework-customize.css" rel="stylesheet">
        <link href="css/Test.css" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">      
        <link rel="stylesheet" href="css/jquery.dataTables.css">
        <!--<link href="css/justified-nav.css" rel="stylesheet">-->


        <!--<link rel="stylesheet" href="bootstrap-table.css">-->


        <script src="js/jquery.min.js"></script>
        <script src="js/jquery.dataTables.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/bootstrap-table.js"></script>
        <script src="js/OwnDesigned.js"></script>


        <script>
//            $(document).ready(function() {
//                $(".navbar-project").click(function() {
//                    $(".mainpage").removeClass("active");
//                    $(".navbar-project").addClass("active");
//                });
//            });

        </script>
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
                $('#knowTable').dataTable({
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
                    <a class="navbar-brand" href="#" style="padding: 0; padding-left: 15px; width: 65px">
                        <img src="img/Logo.png" alt="">
                    </a>
                </div>
                <div id="navbar" class="navbar-collapse">
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
                                <li><a href="#" class="openPopupProfile" name="userID">Profile</a></li>
                                <li><a href="#">Change password</a></li>
                                <li><a href="CenterServlet?btAction=Log out">Log out</a></li>
                            </ul>
                        </li>

                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>


        <div style="background-color: #06213F">
            <div id="blanket" style="background-color: transparent">
                <div style="margin-bottom: 30px; height: 45px">

                </div>

                <div id="dialog-form" style="display: none; background-color: white">
                    <form></form>
                </div>





