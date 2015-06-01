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
=======================================================================================================================
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
                    <h2 id="title" style="text-align: center">Add Timesheet</h2>
                    <c:set var="listPro" value="${requestScope.LISTPRO}"/>
                    <c:set var="listTimesheet" value="${requestScope.TIMESHEETLIST}"/>
                    <c:set var="acc" value="${sessionScope.USERACCOUNT}"/>
                    <form action="CenterServlet"  class="form-timesheet">
                        <table>
                            <tbody>
                                <tr style="background-color: inherit">
                                    <td>
                                        <input id="timesheet" type="hidden" name="timesheetID" value="0"/>
                                        <input id="proUpdateTarget" type="hidden" name="txtProUpdate" value="0"/>
                                        <input type="hidden" name="txtEmpID" value="${acc.accountID}" />
                                        Employee Name:
                                    </td>
                                    <td style="width: 400px ;padding-left: 10px;" >
                                        ${acc.fullName}
                                    </td>
                                    <td>Project Code:</td>
                                    <td><select  name="dropPro" style="width:50%"  >
                                            <option></option>
                                            <c:forEach items="${listPro}" var="row">
                                                <option id="ProCod${row.projectID}" class="ProcodDDL" value="${row.projectID}">
                                                    ${row.projectCode}</option>
                                                </c:forEach>
                                    </td>
                                </tr>
                                <tr style="background-color: inherit">
                                    <td>Date:</td>
                                    <td class="tdCenter"><input  name ="date" type="text" id="datepicker" style="width: 25%"></td>
                                    <td>Time:</td>
                                    <td class="tdCenter"><input id="tim" type="text" name="txtTime"  style="width: 15%"/><font>   </font>hours</td>
                                </tr>
                            </tbody>
                        </table>

                        Description:<textarea id="descrip"  class="form-control" rows="3" style="width: 100%" name="des"></textarea></br>
                        <input type="submit" value="AddTimesheet" name="btAction" id="add"/>
                        <input type="reset" value="Reset" name="btAction" id="reset"/><br/>
                        <button value="UpdateTimesheet" name="btAction" id="update" hidden>Save</button><br/>
                    </form>
                    <div style="border-bottom: #373737 solid thick; margin: 15px 0"></div>

                    <table class="table table-bordered">
                        <thead>
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
                            <c:forEach items="${listTimesheet}" var="rows" varStatus="counter">
                                <tr>
                                    <td class="tdCenter">
                                        ${counter.count}
                                        <label id="timeSheetID${rows.timeSheetID}" hidden="">${rows.timeSheetID}</label>
                                    </td> 
                                    <td id="date${rows.timeSheetID}">${rows.writeDate}</td>
                                    <td id="time${rows.timeSheetID}">${rows.time}</td>
                                    <td class="tdFix" id="des${rows.timeSheetID}">${rows.description}</td>
                                    <td class="tdCenter" id="proCode${rows.timeSheetID}"> ${rows.projectCode}</td>
                                    <td class="tdCenter">  <input type="button" class="updateTimesheet" name="${rows.timeSheetID}" value="Update"></td>
                                    <td class="tdCenter">
                                        <label id="proUpdate${rows.timeSheetID}" hidden="">${rows.projectID}</label>
                                        <c:url var="deleteLink" value="CenterServlet">
                                            <c:param name="timesheetID" value="${rows.timeSheetID}"/>
                                            <c:param name="btAction" value="DeleteTimesheet"/>
                                        </c:url>
                                        <a href="${deleteLink}">Delete</a> 
                                    </td>
                                    <td class="tdCenter">
                                        <c:choose>
                                            <c:when test="${rows.reviewerID == 0}">
                                                Pending...
                                            </c:when>
                                            <c:otherwise>
                                                Reject
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
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