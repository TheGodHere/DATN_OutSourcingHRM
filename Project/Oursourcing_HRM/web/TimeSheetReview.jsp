<%-- 
    Document   : TimeSheetReview
    Created on : Jun 1, 2015, 2:29:56 PM
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
    <div class="rounded" style="min-height:600px">
        <main class="container clear" style="width: 100%">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                    <title>Review Timesheet</title>
                    <link rel="stylesheet" href="css/jquery-ui.css">
                    <link href="css/bootstrap.min.css" rel="stylesheet">
                </head>
                <body>
                    <h2 style="text-align: center">Review Timesheet</h2><br/>
                    <form action="CenterServlet"  class="form-timesheet">
                        <c:set var="listpro" value="${requestScope.LISTPRO}"/>
                        Project:<select  name="dropPro" style="width:50%"  >
                            <option></option>
                            <c:forEach items="${listpro}" var="row">
                                <option value="${row.projectID}">
                                    ${row.projectCode}</option>
                                </c:forEach>
                        </select>
                        <button value="SearchReviewTimesheet" name="btAction">Search</button>
                    </form>
                    <div style="border-bottom: #D7D7D7 solid thin; margin: 15px 0"></div>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>Employee Name</th>
                                <th>Date</th>
                                <th>Description</th>
                                <th>Time</th>
                                <th>Project Code</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:set var="list" value="${requestScope.LISTTIMESHEETBYPRO}"/>
                            <c:forEach items="${list}" var="row" varStatus="counter">
                                <tr>
                            <form action="CenterServlet">
                                <td>${counter.count}</td>
                                <td>
                                    <input type="hidden" name="txtTimesheetID" value="${row.timeSheetID}" />
                                    ${row.fullName}
                                </td>
                                <td>${row.writeDate}</td>
                                <td>${row.description}</td>
                                <td>${row.time}</td>
                                <td>${row.projectCode}</td>

                                <td> <input type="submit" value="Approve" name="btAction" style="color: green" /> 
                                    <input type="submit" value="Reject" name="btAction" style="color: red"/></td>
                            </form>
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