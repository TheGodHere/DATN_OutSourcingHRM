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
                <h2 style="text-align: center">Period Evaluation</h2>
                <div class="row" style="margin: 20px 0">
                    <!--                    <select style=" width: 15%" name="year">
                                            <option value="3" selected="true">3 months</option>
                                            <option value="6">6 months</option>
                                            <option value="9">9 months</option>
                                            <option value="12">12 months</option>
                                        </select>-->
                    <div style="width: 100%; float: right; text-align: right">
                        Period evaluation: <label>Summer 2015</label>
                    </div>
                    
                    <div style="width: 50%; float: left">
                        Showing employees for the last: <label>6 months</label>
                    </div>
                    <div style="width: 50%; float: right; text-align: right">
                        Phase: <label>Evaluating</label>
                        <!--Phase: <label>Reviewing evaluation</label>-->
                    </div>
                </div>
                <div class="row" style="margin: 20px 0">
                    <table class="table">
                        <thead>  
                            <tr>  
                                <th>#</th>
                                <th>Username</th>
                                <th>Full name</th>
                                <th>Projects</th>
                                <th>Start date</th>
                                <th>End date</th>
                                <th>Role</th>
                                <th style="width: 10%">Status</th>
                                <th style="width: 10%"></th>  
                            </tr>
                        </thead>  
                        <tbody>
                            <%--
                            <c:forEach items="${result}" var="rows" varStatus="counter" >
                                <tr>
                                    <td>${counter.count}</td>
                                    <td>
                                        <c:url var="deleteLink" value="CenterServlet">
                                            <c:param name="accountID" value="${rows.accountID}"/>  
                                            <c:param name="btAction" value="ViewEmployeeDetail"/>
                                        </c:url>
                                        <a href="#" class="openPopupEmployee" name="${rows.accountID}" >${rows.fullName}</a>
                                    </td>
                                    <td>${rows.role}</td>
                                    <td>${rows.birthday}</td>
                                    <td>${rows.email}</td>
                                    <td>${rows.phone}</td>                            
                                </tr>
                            </c:forEach>
                            --%>
                            <%-- Evaluating Phase --%>
<!--                            <tr>
                                <td>1</td>
                                <td><a href="#">hoanglm01</a></td>
                                <td><label>Le Minh Hoang</label></td>
                                <td>OHRM</br>PCMS</td>
                                <td>01/01/2015</br>04/01/2015</td>
                                <td>05/30/2015</br>08/30/2015</td>
                                <td>Engineer</td>
                                <td><label class="status-close">On going</label></td>
                                <td>
                                    <input type="button" class="btn btn-sm btn-success" style="width: 100%" value="Evaluate">
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td><a href="#">phuocnh01</a></td>
                                <td><label>Nguyen Huu Phuoc</label></td>
                                <td>OHRM</td>
                                <td>01/01/2015</td>
                                <td>05/30/2015</td>
                                <td>Engineer</td>
                                <td><label class="status-new">Evaluated</label></td>
                                <td>
                                    <input type="button" class="btn btn-sm btn-primary" style="width: 100%" value="View result">
                                </td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td><a href="#">maintx01</a></td>
                                <td><label>Nguyen Thi Xuan Mai</label></td>
                                <td>PCMS</td>
                                <td>01/01/2015</td>
                                <td>05/30/2015</td>
                                <td>Engineer</td>
                                <td><label class="status-new">Evaluated</label></td>
                                <td>
                                    <input type="button" class="btn btn-sm btn-primary" style="width: 100%" value="View result">
                                </td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td><a href="#">kiennt01</a></td>
                                <td><label>Ngo Trac Kien</label></td>
                                <td>PCMS</td>
                                <td>01/01/2015</td>
                                <td>05/30/2015</td>
                                <td>Engineer</td>
                                <td><label class="status-close">On going</label></td>
                                <td>
                                    <input type="button" class="btn btn-sm btn-success" style="width: 100%" value="Evaluate">
                                </td>
                            </tr>
                            -->
                            <%-- Reviewing Phase --%>
                            <tr>
                                <td>1</td>
                                <td><a href="#">hoanglm01</a></td>
                                <td><label>Le Minh Hoang</label></td>
                                <td>OHRM</br>PCMS</td>
                                <td>01/01/2015</br>04/01/2015</td>
                                <td>05/30/2015</br>08/30/2015</td>
                                <td>Engineer</td>
                                <td><label class="status-close">Reviewing</label></td>
                                <td>
                                    <input type="button" class="btn btn-sm btn-primary" style="width: 100%" value="View result">
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td><a href="#">phuocnh01</a></td>
                                <td><label>Nguyen Huu Phuoc</label></td>
                                <td>OHRM</td>
                                <td>01/01/2015</td>
                                <td>05/30/2015</td>
                                <td>Engineer</td>
                                <td><label class="status-done">Rejected</label></td>
                                <td>
                                    <input type="button" class="btn btn-sm btn-primary" style="width: 100%" value="View result">
                                </td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td><a href="#">maintx01</a></td>
                                <td><label>Nguyen Thi Xuan Mai</label></td>
                                <td>PCMS</td>
                                <td>01/01/2015</td>
                                <td>05/30/2015</td>
                                <td>Engineer</td>
                                <td><label class="status-close">Reviewing</label></td>
                                <td>
                                    <input type="button" class="btn btn-sm btn-primary" style="width: 100%" value="View result">
                                </td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td><a href="#">kiennt01</a></td>
                                <td><label>Ngo Trac Kien</label></td>
                                <td>PCMS</td>
                                <td>01/01/2015</td>
                                <td>05/30/2015</td>
                                <td>Engineer</td>
                                <td><label class="status-new">Approved</label></td>
                                <td>
                                    <input type="button" class="btn btn-sm btn-primary" style="width: 100%" value="View result">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </main>
    </div>


    <%@include file="firstFoot.jsp" %>