<%@include file="firstHead.jsp" %>

<c:set var="result" value="${requestScope.result}" />

<c:set var="maxpage" value="11" />
<c:set var="curpage" value="${param.page}" />
<c:set var="dept" value="${param.dept}" />
<c:set var="searchQ" value="${param.searchQ}" />
<c:if test="${empty dept}">
    <c:set var="dept" value="all"/>
</c:if>
<c:set var="urlQ" value="searchEmployee.jsp?dept=${dept}" />
<c:if test="${not empty searchQ}" >
    <c:set var="searchQ" value="${urlQ}&code=${searchQ}" />
</c:if>

<c:if test="${empty curpage}">
    <c:set var="curpage" value="1"/>
</c:if>



<div class="wrapper row2">
    <div class="rounded">
        <nav id="mainav" class="mainav"> 
            <!-- ################################################################################################ -->
            <div class="mainav" style="margin-left: 10%; margin-right: 10%">
                <ul  class="clear">
                    <li><a href="CenterServlet?btAction=listAllProject">Project</a></li>
                    <li><a href="CenterServlet?btAction=SearchEmployee">Employee</a></li>
                    <li><a href="searchKnowledge.jsp">Knowledge</a></li>
                    <li><a href="CenterServlet?btAction=Timesheet">Time sheet</a></li>
                    <li><a href="listEmpForEva.jsp">Evaluation</a></li>       
                </ul>
            </div>
            <!-- ################################################################################################ --> 
        </nav>
    </div>
</div>
<div class="wrapper row3">
    <div class="rounded">
        <main class="container clear" style="width: 100%">
            <div>
                <h1 style="text-align: center">Search Employee</h1>
                <div >
                    <!--<div style="width: 60%">-->
                    <form action="CenterServlet" method="get" class="form-search">
                        <input type="text" name="txtSearch" value="${param.txtSearch}"/>
                        <input type="submit" name="btAction" value="SearchEmployee"/>
                    </form>
                    <!--</div>-->
                    <!--                    Department <select style=" width: 15%" onchange="">
                                            <optgroup label="Department">
                                                <option value="all">All</option>
                                                <option value="Department 1">Department 1</option>
                                                <option value="Department 2">Department 2</option>
                                                <option value="Department 3">Department 3</option>
                                                <option value="Department 4">Department 4</option>
                                            </optgroup>
                                        </select>-->

                </div>

                <table class="table">  
                    <thead>  
                        <tr>  
                            <th>No #</th> 
                            <th>Name</th>                              
                            <th>Role</th>                               
                            <th>Birthday</th>  
                            <th>Mail</th>  
                            <th>Phone</th>
                        </tr>  
                    </thead>  
                    <tbody>
                        <c:forEach items="${result}" var="rows" varStatus="counter" >
                            <tr>
                                <td>${counter.count}</td>
                                <td>
                                    <c:url var="deleteLink" value="CenterServlet">
                                        <c:param name="accountID" value="${rows.accountID}"/>  
                                        <c:param name="btAction" value="ViewEmployeeDetail"/>
                                    </c:url>
                                    <a href="#" class="openPopupEmployee" data-toggle="modal" 
                                       data-target="#employee-detail-modal" name="${rows.accountID}" >${rows.fullName}</a>
                                </td>
                                <td>${rows.role}</td>
                                <td>${rows.birthday}</td>
                                <td>${rows.email}</td>
                                <td>${rows.phone}</td>                            
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </main>
        <div class="modal fade bs-criterion-modal-lg" tabindex="-1" 
             role="dialog" aria-labelledby="myLargeModalLabel" 
             aria-hidden="true" id="employee-detail-modal"></div>
    </div>


    <%@include file="firstFoot.jsp" %>