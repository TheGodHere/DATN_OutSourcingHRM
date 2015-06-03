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
<div class="wrapper row3">
    <div class="rounded">
        <main class="container clear" style="width: 100%">
            <div>
                <h2 style="text-align: center">Period Evaluation</h2>
                <div class="row" style="margin: 20px 0">
                    <div style="width: 50%; float: left">
                        List employee for the past: <label>6 months</label>
                    </div>
                    <!--                    <select style=" width: 15%" name="year">
                                            <option value="3" selected="true">3 months</option>
                                            <option value="6">6 months</option>
                                            <option value="9">9 months</option>
                                            <option value="12">12 months</option>
                                        </select>-->
                    <div style="width: 50%; float: right; text-align: right">
                        Period evaluation: <label>Summer 2015</label>
                    </div>
                </div>
                <div class="row" style="margin: 20px 0">
                    <table class="table">
                        <thead>  
                            <tr>  
                                <th>#</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Projects</th>
                                <th>Start date</th>
                                <th>End date</th>
                                <th>Role</th>
                                <th>Status</th>
                                <th style="width: 55px"></th>  
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
                            <tr>
                                <td>1</td>
                                <td><label>Le Minh Hoang</label></td>
                                <td>hoanglm@mail.com</td>
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
                                <td><label>Nguyen Huu Phuoc</label></td>
                                <td>phuocnh@mail.com</td>
                                <td>OHRM</td>
                                <td>01/01/2015</td>
                                <td>05/30/2015</td>
                                <td>Engineer</td>
                                <td><label class="status-done">Rejected</label></td>
                                <td>
                                    <input type="button" class="btn btn-sm btn-primary" style="width: 100%" value="Re-evaluate">
                                </td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td><label>Nguyen Thi Xuan Mai</label></td>
                                <td>maintx@mail.com</td>
                                <td>PCMS</td>
                                <td>01/01/2015</td>
                                <td>05/30/2015</td>
                                <td>Engineer</td>
                                <td><label class="status-success">Reviewing</label></td>
                                <td>
                                    <input type="button" class="btn btn-sm btn-primary" style="width: 100%" value="Re-evaluate">
                                </td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td><label>Ngo Trac Kien</label></td>
                                <td>kiennt@mail.com</td>
                                <td>PCMS</td>
                                <td>01/01/2015</td>
                                <td>05/30/2015</td>
                                <td>Engineer</td>
                                <td><label class="status-new">Approved</label></td>
                                <td>
                                    <input type="button" class="btn btn-sm btn-primary" style="width: 100%" value="Re-evaluate" disabled>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </main>
    </div>


    <%@include file="firstFoot.jsp" %>