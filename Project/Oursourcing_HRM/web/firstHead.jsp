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
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/justified-nav.css" rel="stylesheet">
        <link href="css/Framework.css" rel="stylesheet">
        <link href="css/layout.css" rel="stylesheet">


        <style type="text/css"></style><link rel="stylesheet" type="text/css" href="chrome-extension://lfjamigppmepikjlacjdpgjaiojdjhoj/css/menu.css"></head>
    <body>
        
        <nav class="navbar navbar-inverse navbar-fixed-top " 
             style="background-color: #00004B">
            <div class="container">
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
                    <h1><img src="img/Homepage.png" alt="some_text" ></h1>                    
                </div>
            </div>
            <c:set var="UserAcc" value="${acc.title}" />
            <c:choose>
                <c:when test="${acc.title eq 'Employee'}">
                    <%@include file="EmployeeNavBar.jsp" %>
                </c:when>
                <c:when test="${acc.title eq 'Manager'}">
                    <%@include file="EmployeeNavBar.jsp" %>
                </c:when>
                <c:when test="${acc.title eq 'Director'}">
                    <%@include file="EmployeeNavBar.jsp" %>
                </c:when>
                <c:when test="${acc.title eq 'Customer'}">
                    <%@include file="EmployeeNavBar.jsp" %>
                </c:when>
                <c:when test="${acc.title eq 'Admin'}">
                    <%@include file="EmployeeNavBar.jsp" %>
                </c:when>
                <c:when test="${acc.title eq 'HResource'}">
                    <%@include file="EmployeeNavBar.jsp" %>
                </c:when>
                <c:otherwise>
                    <%@include file="EmployeeNavBar.jsp" %>
                </c:otherwise>
            </c:choose>

            <div class="wrapper row3">
                <div class="rounded">
                    <main class="container clear"> 
                        <!-- main body --> 
                        <!-- ################################################################################################ -->

                        <!-- ################################################################################################ -->
                        <h2>Latest News &amp; Events</h2>
                        <ul class="nospace listing">
                            <li class="clear">
                                <div class="imgl borderedbox"><img src="images/demo/120x120.gif" alt=""></div>
                                <p class="nospace btmspace-15"><a href="#">News.</a></p>
                                <p>This is Outsourcing Human Resource Management Website</p>
                            </li>
                            <li class="clear">
                                <div class="imgl borderedbox"><img src="images/demo/120x120.gif" alt=""></div>
                                <p class="nospace btmspace-15"><a href="#">News</a></p>
                                <p>This is Outsourcing Human Resource Management Website</p>
                            </li>
                            <<li class="clear">
                                <div class="imgl borderedbox"><img src="images/demo/120x120.gif" alt=""></div>
                                <p class="nospace btmspace-15"><a href="#">News</a></p>
                                <p>This is Outsourcing Human Resource Management Website</p>
                            </li>
                        </ul>
                        <p class="right"><a href="#">Click here to view all of the latest news </a></p>
                        <!-- ################################################################################################ --> 
                </div>
                <!-- ################################################################################################ --> 
                <!-- ################################################################################################ --> 
                <!-- ################################################################################################ -->
                <div class="wrapper row4">
                    <div class="rounded">
                        <footer id="footer" class="clear"> 
                            <!-- ################################################################################################ -->

                            <!-- ################################################################################################ --> 
                            <!-- ################################################################################################ --> 
                            <!-- ################################################################################################ -->
                            <div class="wrapper row5">
                                <div id="copyright" class="clear"> 
                                    <!-- ################################################################################################ -->
                                    <p class="fl_left">Copyright &copy; 2015 - All Rights Reserved - <a href="#">OHRM</a></p>    
                                    <!-- ################################################################################################ --> 
                                </div>
                            </div>