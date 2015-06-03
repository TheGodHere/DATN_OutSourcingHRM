<%-- 
    Document   : timesheet
    Created on : Jun 3, 2015, 12:59:37 PM
    Author     : Mon
--%>

<%@include file="firstHead.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="listPro" value="${requestScope.LISTPRO}"/>
<c:set var="listTimesheet" value="${requestScope.TIMESHEETLIST}"/>
<div class="wrapper row2">
    <div class="rounded">
        <nav id="mainav" class="mainav"> 
            <!-- ################################################################################################ -->
            <div class="mainav" style="margin-left: 10%; margin-right: 10%">
                <ul  class="clear">
                    <li class="active" onclick="ChangeContentTab('home')"><a href="#home">Project</a></li>
                    <li onclick="ChangeContentTab('work')"><a href="#work">Employee</a></li>
                    <li onclick="ChangeContentTab('recruitment')"><a href="#recruitment">Knowledge</a></li>
                    <li onclick="ChangeContentTab('employee')"><a href="#employee">Time sheet</a></li>
                    <li onclick="ChangeContentTab('knowledge')"><a href="#knowledge">Evaluation</a></li>       
                </ul>
            </div>
            <!-- ################################################################################################ --> 
        </nav>
    </div>
</div>

<div class="wrapper row3">
    <div class="rounded">
        <main class="container clear" style="width: 100%">
            <h2 style="text-align: center; color: black">Timesheet</h2>
            <div id="tabs" class="tabs-customized">
                <ul>
                    <li id="li_timesheet" class="active tab-pdetail" onclick="tab('timesheet')" ><a>Timesheet</a></li>
                    <li id="li_viewTimesheet" class="tab-pdetail" onclick="tab('viewTimesheet')"><a style="width: auto;padding-right: 20px;">View all timehsheets</a></li>
                </ul>
                <div id="Content_Area" style="height: auto; background-color: buttonface;">
                    <div id="timesheet" class="tab-content-pdetail" style="background-color: white">
                        <div>
                            <form action="CenterServlet"  class="form-timesheet" style="padding-bottom: 0; margin-bottom: 0">
                                <table>
                                    <tbody>
                                        <tr style="background-color: inherit">
                                            <td>
                                                <input id="timesheet" type="hidden" name="timesheetID" value="0"/>
                                                <input id="proUpdateTarget" type="hidden" name="txtProUpdate" value="0"/>
                                                <input type="hidden" name="txtEmpID" value="${acc.accountID}" />
                                                Engineer Name:
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
                                <input class="btn btn-success" type="submit" value="AddTimesheet" name="btAction" id="add"/>
                                <input class="btn btn-success" type="reset" value="Reset" name="btAction" id="reset"/><br/>
                                <button value="UpdateTimesheet" name="btAction" id="update" style="width: auto;display: none"class="btn btn-success">Save</button><br/>
                            </form>
                            <div style="border-bottom: #373737 solid thick; margin: 15px 0; margin-top: 0"></div>

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
                                            <td class="tdCenter">  <input type="button" class="updateTimesheet btn btn-sm btn-warning" name="${rows.timeSheetID}" value="Update"></td>
                                            <td class="tdCenter">
                                                <label id="proUpdate${rows.timeSheetID}" hidden="">${rows.projectID}</label>
                                                <c:url var="deleteLink" value="CenterServlet">
                                                    <c:param name="timesheetID" value="${rows.timeSheetID}"/>
                                                    <c:param name="btAction" value="DeleteTimesheet"/>
                                                </c:url>
                                                <a href="${deleteLink}" style="color: red">Delete</a> 
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
                        </div>
                    </div>

                    <div id="viewTimesheet" class="tab-content-pdetail" style="display: none;" style="background-color: white">

                        <table  class="sortable table table-bordered table-sort-customize" id="sortabletable">
                            <thead>
                            <th>No.</th>
                            <th>Date</th>
                            <th>Time</th>
                            <th>Description</th>
                            <th>Project Code</th>
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
                    </div>
                </div>


            </div>
    </div>
</main>
</div>

<script type="text/javascript">
    function tab(tab) {
        $('.tab-content-pdetail').css("display", "none");
        $('.tab-pdetail').removeClass('active');
        document.getElementById(tab).style.display = 'block';
        document.getElementById('li_' + tab).setAttribute("class", "tab-pdetail active");
    }
</script>
<script>
    $(function() {
        $("#datepicker").datepicker();
    });
</script>
<%@include file="firstFoot.jsp" %>
