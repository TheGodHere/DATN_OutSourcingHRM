<%-- 
    Document   : Login.jsp
    Created on : May 16, 2015, 9:20:55 AM
    Author     : Mon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title>OHRM</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    </head>
    <style>
        body {
            background-color: #00AFF0;
        }
    </style>
    <body>
        <form action="CenterServlet" class="login" method="POST">
            <center>
                <img src="img/Logo_5.png" alt="" style="margin-bottom: 15px;">
            </center>           
            <input type="text" name="username" class="login-input" placeholder="Username" autofocus>
            <input type="password" name="password" class="login-input" placeholder="Password">
            <center><input type="submit" value="Login" class="login-submit" name="btAction" style="width: 40%;"></center>
            <table style="width: 100%">
                <tr>
                    <c:if test="${requestScope.WRONGUSERPASS eq 'Wrong'}">
                    <div style="text-align: center"> <font color = "yellow" size = "2" >Invalid login, please try again</font></div>
                    </c:if>
                </tr>
                <tr>
                    <td><div class="checkbox">
                            <div style="text-align: left"><label><input type="checkbox" value=""><font color = "#00AFF0" size = "2" >Stay logged in</font></label></div>
                        </div>
                    </td>
                    <td style="">
                        <div style="text-align: right"><a href="index.html"><font color = "#00AFF0" size = "2" >Forgot password?</font></a></div>
                    </td>
                </tr>
            </table>
            <!--            <div class="checkbox">
                            <p style="text-align: left"><label><input type="checkbox" value=""><font color = "white">Stay logged in</font></label></p>
                        </div>
                        <p class="login-help"><a href="index.html">Forgot password?</a></p>-->
        </form>     
    </body>
</html>
