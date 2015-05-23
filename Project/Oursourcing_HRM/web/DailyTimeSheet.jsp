<%-- 
    Document   : DailyTimeSheet
    Created on : May 22, 2015, 2:16:42 PM
    Author     : Mon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="firstHead.jsp" %>
<!DOCTYPE html>
<div class="wrapper row2">
    <div class="rounded">
        <nav id="mainav" class="mainav"> 
            <!-- ################################################################################################ -->
            <div class="mainav" style="margin-left: 10%; margin-right: 10%">
                <ul  class="clear">
                    <li class="active" onclick="ChangeContentTab('home')"><a href="#home">Home</a></li>
                    <li onclick="ChangeContentTab('work')"><a href="#work">Work place</a></li>
                    <li onclick="ChangeContentTab('recruitment')"><a href="#recruitment">Recruitment</a></li>
                    <li onclick="ChangeContentTab('employee')"><a href="#employee">Employee</a></li>
                    <li onclick="ChangeContentTab('knowledge')"><a href="#knowledge">Knowledge</a></li>       
                </ul>
            </div>
            <!-- ################################################################################################ --> 
        </nav>
    </div>
</div>
<%-- 
================================================================================
--%>

<div class="wrapper row3">
    <div class="rounded">
        <main class="container clear" style="width: 100%">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                    <title>Daily Time Sheet</title>
                    <link rel="stylesheet" href="css/jquery-ui.css">
                    <link href="css/bootstrap.min.css" rel="stylesheet">
                    <script src="js/jquery-1.10.2.js"></script>
                    <script src="js/jquery-ui.js"></script>
                    <link rel="stylesheet" href="css/style_dtpicker.css">
                    <script>
                        $(function() {
                            $("#datepicker").datepicker();
                        });
                    </script>
                </head>
                <body>
                    <%--  <div class="row">
                          <div class="col-md-2" style="height: 32px"><lable>Engineer Name:</lable></div>
                          <div class="col-md-4"style="height: 32px"><lable>_____________________________</lable></div>
                          <div class="col-md-2"style="height: 32px"><lable>Project:</lable></div>
                          <div class="col-md-4"><select name="dropPro" style="width: 200px;">
                                  <option>Test 1</option>
                                  <option>lay data dong</option>
                              </select></div>
                      </div>
                      <div class="row">
                          <div class="col-md-2" style="height: 50px"><lable>Date:</lable></div>
                          <div class="col-md-4"style="height: 50px"><input type="text" id="datepicker" style="margin-top: 20px;margin-bottom: 0px"></div>
                          <div class="col-md-2"style="height: 50px"><lable>Time:</lable></div>
                                      <div class="col-md-4"style="height: 50px"><input type="text" name="txtTime" value="" style="width: 50px"/><lable>hours</lable></div>

                                    </div>--%>
                    <table>
                        <tbody>
                            <tr style="background-color: inherit">
                                <td>Employee Name:</td>
                                <td style="width: 400px">___________________</td>
                                <td>Project Code:</td>
                                <td><select name="dropPro" style="width: 200px;">
                                        <option>Test 1</option>
                                        <option>lay data dong</option>
                                    </select></td>
                            </tr>
                            <tr style="background-color: inherit">
                                <td>Date:</td>
                                <td style="width: 400px"><input type="text" id="datepicker" style="width: 200px"></td>
                                <td>Time:</td>
                                <td><input type="text" name="txtTime" value="" style="width: 50px"/><font>   </font>hours</td>
                            </tr>
                        </tbody>
                    </table>



                    Description:<textarea class="form-control" rows="3" style="width: 100%"></textarea></br>
                    <input type="submit" value="Add" name="btAction" />
                    <input type="submit" value="Reset" name="btAction" /><br/>
                    ====================================================================================================================</br>
                    <table class="table table-bordered">
                        <thead>
                            <%-- <th  style="width: 30px">No.</th>
                             <th  style="width: 100px">Date</th>
                             <th style="width: 30px">Time</th>
                             <th>Description</th>
                             <th  style="width: 150px">Project Code</th>
                             <th style="width: 50px">Update</th>
                             <th style="width: 50px">Delete</th>
                             <th style="width: 70px">Status</th>--%>
                        <th>No.</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>Description</th>
                        <th>Project Code</th>
                        <th>Update</th>
                        <th>Delete</th>
                        <th>Status</th>
                        </thead>
                        <tbody>
                            <c:forEach begin="1" end="10" step="1" varStatus="counter">
                                <tr>
                                    <td class="tdCenter">
                                        ${counter.count}
                                    </td>
                                    <td class="tdCenter">22/05/2015</td>
                                    <td class="tdCenter">8</td>
                                    <td class="tdFix">Codinnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnng</td>
                                    <td class="tdCenter">OHRM</td>
                                    <td class="tdCenter"> <input type="submit" value="Update" /> </td>
                                    <td class="tdCenter"> <a href="">Delete</a> </td>
                                    <td class="tdCenter">Pending...</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </body>
            </html>
        </main>
    </div>
</div>

<%@include file="firstFoot.jsp" %>