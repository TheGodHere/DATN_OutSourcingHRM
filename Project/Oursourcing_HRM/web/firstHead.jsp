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
                                <li><a href="#Profiles">Profiles</a></li>
                                <li><a href="#">Change passwords</a></li>
                                <li><a href="#">Log out</a></li>
                            </ul>
                        </li>

                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>

        <div style="background-color: black">

            <div class="container theme-showcase" role="main">

                <!-- Main jumbotron for a primary marketing message or call to action -->
                <div class="jumbotron">
                    <h1>Theme example</h1>
                    <p>This is a template showcasing the optional theme stylesheet included in Bootstrap. Use it as a starting point to create something more unique by building on or modifying it.</p>
                </div>
            </div>
            <c:set var="UserAcc" value="${acc.title}" />
            <c:choose>
                <c:when test="${UserAcc.role eq 'Employee'}">
                    <%@include file="EmployeeNavBar.jsp" %>
                </c:when>
                <c:when test="${UserAcc.role eq 'Manager'}">
                    <%@include file="EmployeeNavBar.jsp" %>
                </c:when>
                <c:when test="${UserAcc.role eq 'Director'}">
                    <%@include file="EmployeeNavBar.jsp" %>
                </c:when>
                <c:when test="${UserAcc.role eq 'Customer'}">
                    <%@include file="EmployeeNavBar.jsp" %>
                </c:when>
                <c:when test="${UserAcc.role eq 'Admin'}">
                    <%@include file="EmployeeNavBar.jsp" %>
                </c:when>
                <c:when test="${UserAcc.role eq 'HResource'}">
                    <%@include file="EmployeeNavBar.jsp" %>
                </c:when>
                <c:otherwise>
                    <%@include file="EmployeeNavBar.jsp" %>
                </c:otherwise>
            </c:choose>

            <div class="panel panel-default" style="background-color: white;
                 margin-top: 30px; margin-left: 5%; margin-right: 5%">
