<%@include file="firstHead.jsp" %>

<c:set var="proj" value="${requestScope.pInfo}" />
<c:set var="listMember" value="${requestScope.pMember}" />
<c:set var="skillList" value="${requestScope.skillList}" />


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
            <h1 style="text-align: center">Project Details</h1>
            <c:if test="${proj.status eq 'working'}" >
                <div style="float: right; font-weight: 700">Status: <label class="status-success">Working</label></div>
            </c:if>
            <c:if test="${proj.status eq 'closed'}" >
                <div style="float: right; font-weight: 700">Status: <label class="status-close">Closed</label></div>
            </c:if>
            <c:if test="${proj.status eq 'new'}" >
                <div style="float: right; font-weight: 700">Status: <label class="status-new">New</label></div>
            </c:if>
            <c:if test="${proj.status eq 'done'}" >
                <div style="float: right; font-weight: 700">Status: <label class="status-done">Done</label></div>
            </c:if>


            <div id="tabs" class="tabs-customized">
                <ul>
                    <li id="li_info" class="active tab-pdetail" onclick="tab('info')" ><a>Info</a></li>
                        <c:if test="${proj.status eq 'new' || proj.status eq 'working'}" >
                        <li id="li_member" class="tab-pdetail" onclick="tab('member')"><a>Member</a></li>
                        </c:if>
                    <li id="li_knowledge" class="tab-pdetail" onclick="tab('knowledge')"><a>Knowledge</a></li>
                        <c:if test="${proj.status eq 'done' || proj.status eq 'closed'}" >
                        <li id="li_feedback" class="tab-pdetail" onclick="tab('feedback')"><a>Feedback</a></li>
                        </c:if>
                        <c:if test="${proj.status eq 'done' || proj.status eq 'closed'}" >
                        <li id="li_appraisal" class="tab-pdetail" onclick="tab('appraisal')"><a>Appraisal</a></li>
                        </c:if>
                </ul>
                <div id="Content_Area" style="height: auto; background-color: buttonface;">
                    <div id="info" class="tab-content-pdetail">
                        <form action="CenterServlet" style="max-width: none">
                            <input type="hidden" name="projectCode" value="${proj.projectCode}"/>
                            <input type="hidden" name="projectID" value="${proj.projectID}"/>
                            <table style="width: 80%;margin: 0 auto">
                                <tr style="background-color: inherit">
                                    <td style="width: 25%;">
                                        <label><font color="black">Project Name:</font></label>
                                    </td>
                                    <td style="width: 25%">
                                        <input type="text" class="projectTextbox" name="projectName" 
                                               style="display: none;margin:5px 0;width: 200px"
                                               value="${proj.projectName}">
                                        <label class="projectInfo">${proj.projectName}</label>
                                    </td>                                
                                    <td style="width: 25%;">
                                        <label><font color="black">Manager:</font></label>
                                    </td>
                                    <td style="width: 25%">
                                        <%--<input type="text" id="name" class="projectTextbox" name="name" style="display: none;margin:5px 0;width: 200px" >--%>
                                        <label>${proj.managerName}</label>
                                    </td>                             
                                </tr>
                                <tr style="background-color: inherit">
                                    <td style="width: 25%;">
                                        <label><font color="black">Project Code:</font></label>
                                    </td>
                                    <td style="width: 25%">
                                        <%--
                                       <input type="text" class="projectTextbox" name="projectCode" 
                                              style="display: none;margin:5px 0;width: 200px" 
                                              value="${proj.projectCode}">
                                        --%>
                                        <label>${proj.projectCode} </label>
                                    </td> 
                                    <td style="width: 25%;">
                                        <label><font color="black">Customer:</font></label>
                                    </td>
                                    <td style="width: 25%">
                                        <%--<input type="text" id="name" class="projectTextbox" name="name" style="display: none;margin:5px 0;width: 200px">--%>
                                        <label>${proj.customerName}</label>
                                    </td>
                                </tr>
                                <tr style="background-color: inherit; vertical-align: top; height: 24px">
                                    <td style="width: 25%;">
                                        <label><font color="black">Start Date:</font></label>
                                    </td>
                                    <td style="width: 25%">
                                        <input type="text" class="projectTextbox" name="startDate" 
                                               style="display: none;margin:5px 0;width: 200px" 
                                               value="${proj.startDate} ">
                                        <label class="projectInfo">${proj.startDate} </label>
                                    </td>

                                    <td rowspan="2" style="width: 25%;">
                                        <label><font color="black">Skill:</font></label>
                                    </td>
                                    <td rowspan="2" style="width: 25%">
                                        <c:forEach var="skill" items="${skillList}">
                                            <c:set var="flag" value="0" />
                                            <c:forEach var="curSkill" items="${proj.listOfSkill}">
                                                <c:if test="${skill.skillName eq curSkill.skillName}">
                                                    <div class="projectTextbox" style="display: none" >
                                                        <input type="checkbox" name="skill" value="${skill.skillID}" checked="" />
                                                        ${skill.skillName}
                                                    </div>
                                                    <c:set var="flag" value="1" />
                                                </c:if>
                                            </c:forEach>
                                            <c:if test="${flag == 0}" >
                                                <div class="projectTextbox" style="display: none">
                                                    <input type="checkbox" name="skill" value="${skill.skillID}" />
                                                    ${skill.skillName}
                                                </div>
                                            </c:if>
                                        </c:forEach>
                                        <label class="projectInfo">
                                            <c:forEach var="skill" items="${proj.listOfSkill}" >
                                                ${skill.skillName} <br/>
                                            </c:forEach>
                                        </label>
                                    </td> 
                                </tr> 
                                <tr style="vertical-align: top; background-color: inherit">
                                    <td style="width: 25%;">
                                        <label><font color="black">End Date:</font></label>
                                    </td>
                                    <td style="width: 25%">
                                        <input type="text" class="projectTextbox" name="endDate" 
                                               style="display: none;margin:5px 0;width: 200px"
                                               value="${proj.endDate}">
                                        <label class="projectInfo">${proj.endDate}</label>
                                    </td> 


                                </tr>

                            </table>
                            <div id="btn-Editproject" class="btn-in-popup" style="margin-top: 25px" >
                                <input type="button" class="btn btn-warning editProfile" onclick="changeProject()" value="Edit Info"/>
                            </div>
                            <div id="btn-Submitproject" class="btn-in-popup" 
                                 style="margin-top: 25px; display: none" >
                                <button class="btn btn-success" type="submit" name="btAction" 
                                        value="SaveProjectDetail"
                                        style="width: auto">Save</button>
                            </div>
                        </form>

                    </div>

                    <div id="member" class="tab-content-pdetail" style="display: none;">
                        <div>
                            <table class="table">  
                                <thead>  
                                    <tr>  
                                        <th>#</th> 
                                        <th>ID</th> 
                                        <th>Full Name</th>
                                        <th>Position</th>  
                                        <th>Work Type</th>
                                        <th style="max-width: 50px; width: 50px"></th>
                                        <!--<th style="max-width: 70px; width: 70px"></th>-->
                                    </tr>  
                                </thead>  
                                <tbody>
                                    <%--<c:set var="counter" value="0" />--%>
                                    <c:forEach var="member" items="${listMember}" varStatus="counter">
                                        <c:set var="listWork" value="${member.workTracking}"  />
                                        <%--<c:forEach var="work" items="${listWork}">--%>
                                        <%--<c:set var="counter" value="${counter+1}" />--%>
                                        <tr>
                                            <td>${counter.count}</td>
                                            <td>
                                                <a href="#" class="openPopupEmployee" name="${member.employeeID}">
                                                    ${member.employeeUsername}
                                                </a>
                                            </td>
                                            <td>${member.employeeName}</td>
                                            <td>
                                                <c:forEach var="work" items="${listWork}">
                                                    ${work.position} <br/>
                                                </c:forEach>
                                            </td>
                                            <c:if test="${not member.isPartTime}" >
                                                <td>Full-time</td>
                                            </c:if>
                                            <c:if test="${member.isPartTime == true}" >
                                                <td>Part-time</td>
                                            </c:if>

                                            <td>
                                                <button type="button" 
                                                        class="btn btn-sm btn-warning editPosPopup" 
                                                        style="width: auto">Edit
                                                </button>
                                            </td>  
                                            <!--<td><button type="button" class="btn btn-sm btn-danger" style="width: auto">Remove</button></td>--> 
                                            <!--<td><button type="button" class="btn btn-sm btn-danger openPopupAppraisal" style="width: auto">Remove</button></td>--> 
                                        </tr>
                                        <%--</c:forEach>--%>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <form style="margin: 0 0; padding: 0 0; background-color: inherit"
                                  action="suggestEngineer.jsp">
                                <button type="submit" class="btn btn-success" 
                                        style="width: auto"
                                        name="btAction" value="Suggest">
                                    Add more engineers
                                </button>    
                                <%--                                
                                <button type="submit" class="btn btn-success assignPopup" 
                                     style="width: auto"
                                    name="btAction" value="Suggest">                                                      
                                    Add more engineers
                                 </button>  
                                --%>
                            </form>

                        </div>
                    </div>

                    <div id="knowledge" class="tab-content-pdetail" style="display: none">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Topics</th>
                                    <th>Project</th>
                                    <th>Replies</th>
                                    <th>Last comment</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><a class="title" href="knowledgeDetail.jsp">Question: Where should we put SRS files?</a><br/>
                                        <div class="author">Started by: KienNT, 05/22/2015, 10:02:25</div>
                                    </td>
                                    <td>Outsourcing HR Management</td>
                                    <td>50</td>
                                    <td>HoangLM2 <br/>
                                        05/22/2015, 10:34:22 
                                    </td>
                                </tr>
                                <tr>
                                    <td><a class="title" href="knowledgeDetail.jsp">Question: Where should we put SRS files?</a><br/>
                                        <div class="author">Started by: KienNT, 05/22/2015, 10:02:25</div>
                                    </td>
                                    <td>Outsourcing HR Management</td>
                                    <td>50</td>
                                    <td>HoangLM2 <br/>
                                        05/22/2015, 10:34:22 
                                    </td>
                                </tr>
                                <tr>
                                    <td><a class="title" href="knowledgeDetail.jsp">Question: Where should we put SRS files?</a><br/>
                                        <div class="author">Started by: KienNT, 05/22/2015, 10:02:25</div>
                                    </td>
                                    <td>Outsourcing HR Management</td>
                                    <td>50</td>
                                    <td>HoangLM2 <br/>
                                        05/22/2015, 10:34:22 
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                        <div class="number-paging" style="float: right">
                            <c:if test="${curpage == 1}">
                                <a href="#" class="current-page">1</a>
                            </c:if>
                            <c:if test="${curpage == 2}">
                                <a href="${urlQ}&page=1">1</a>
                                <a href="#" class="current-page">2</a>
                            </c:if>
                            <c:if test="${curpage == 3}">
                                <a href="${urlQ}&page=1">1</a>
                                <a href="${urlQ}&page=2">2</a>
                                <a href="#" class="current-page">3</a>
                            </c:if>
                            <c:if test="${curpage == 4}">
                                <a href="${urlQ}&page=1">1</a>
                                <a href="${urlQ}&page=${curpage - 2}">${curpage - 2}</a>
                                <a href="${urlQ}&page=${curpage - 1}">${curpage - 1}</a>
                                <a href="#" class="current-page">${curpage}</a>
                            </c:if>
                            <c:if test="${curpage > 4}">
                                <a href="${urlQ}&page=1">1</a>
                                ...
                                <a href="${urlQ}&page=${curpage - 2}">${curpage - 2}</a>
                                <a href="${urlQ}&page=${curpage - 1}">${curpage - 1}</a>
                                <a href="#" class="current-page">${curpage}</a>
                            </c:if>

                            <%--After page--%>    

                            <c:if test="${maxpage - curpage == 1}">
                                <a href="${urlQ}&page=${curpage + 1}">${curpage + 1}</a>
                            </c:if>
                            <c:if test="${maxpage - curpage == 2}">
                                <a href="${urlQ}&page=${curpage + 1}">${curpage + 1}</a>
                                <a href="${urlQ}&page=${curpage + 2}">${curpage + 2}</a>
                            </c:if>
                            <c:if test="${maxpage - curpage == 3}">
                                <a href="${urlQ}&page=${curpage + 1}">${curpage + 1}</a>
                                <a href="${urlQ}&page=${curpage + 2}">${curpage + 2}</a>
                                <a href="${urlQ}&page=${maxpage}">${maxpage}</a>
                            </c:if>
                            <c:if test="${maxpage - curpage > 3}">
                                <a href="${urlQ}&page=${curpage + 1}">${curpage + 1}</a>
                                <a href="${urlQ}&page=${curpage + 2}">${curpage + 2}</a>
                                ...
                                <a href="${urlQ}&page=${maxpage}">${maxpage}</a>
                            </c:if>
                        </div>
                    </div>

                    <c:if test="${proj.status eq 'done' || proj.status eq 'closed'}" >
                        <div id="feedback" class="tab-content-pdetail" style="display: none">
                            <%@include file="feedbackResult.jsp" %>
                        </div>   
                    </c:if>

                    <c:if test="${proj.status eq 'done' || proj.status eq 'closed'}" >
                        <div id="appraisal" class="tab-content-pdetail" style="display: none">
                            <table class="table">  
                                <thead>  
                                    <tr>  
                                        <th>#</th> 
                                        <th>ID</th> 
                                        <th>Full Name</th>
                                        <th>Position</th>  
                                        <th>Start date</th>
                                        <th>End date</th>
                                        <th style="max-width: 70px; width: 70px"></th>
                                    </tr>  
                                </thead>  
                                <tbody style="vertical-align: top">
                                    <tr>
                                        <td>1</td>
                                        <td>
                                            <a href="#" class="openPopupEmployee" name="HoangLM2">
                                                HoangLM2
                                            </a>
                                        </td>
                                        <td>Le Minh Hoang</td>
                                        <td>
                                            SA <br/>
                                            Developer <br/>
                                            Tester 
                                        </td>
                                        <td>
                                            02/02/2015 <br/>
                                            02/03/2015 <br/>
                                            02/04/2015
                                        </td>
                                        <td>
                                            02/03/2015 <br/>
                                            02/04/2015 <br/>
                                            02/05/2015
                                        </td>

                                        <td>
                                            <form style="max-width: none; width: auto;
                                                  background-color: inherit;
                                                  margin-top: 0; padding-top: 0"
                                                  action="#">
                                                <button type="button" 
                                                        class="btn btn-sm btn-success openPopupAppraisal" 
                                                        style="width: auto">
                                                    Appraisal
                                                </button>
                                                <button type="button" 
                                                        class="btn btn-sm btn-danger" 
                                                        style="width: auto">
                                                    Decline
                                                </button>
                                            </form>
                                        </td> 

                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>
                                            <a href="#" class="openPopupProfile" name="HoangLM2">
                                                PhuocNH
                                            </a>
                                        </td>
                                        <td>Nguyen Huu Phuoc</td>
                                        <td>
                                            Developer <br/>
                                            Tester 
                                        </td>
                                        <td>
                                            02/02/2015 <br/>
                                            02/04/2015
                                        </td>
                                        <td>
                                            02/03/2015 <br/>
                                            02/05/2015
                                        </td>

                                        <td>
                                            <form style="max-width: none; width: auto;
                                                  background-color: inherit;
                                                  margin-top: 0; padding-top: 0"
                                                  action="#">
                                                <button type="button" 
                                                        class="btn btn-sm btn-success openPopupAppraisal" 
                                                        style="width: auto">
                                                    Appraisal
                                                </button>
                                                <button type="button" 
                                                        class="btn btn-sm btn-danger" 
                                                        style="width: auto">
                                                    Decline
                                                </button>
                                            </form>
                                        </td> 

                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>
                                            <a href="#" class="openPopupEmployee" name="HoangLM2">
                                                KienNT
                                            </a>
                                        </td>
                                        <td>Ngo Trac Kien</td>
                                        <td>
                                            Developer <br/>
                                            Tester 
                                        </td>
                                        <td>
                                            02/02/2015 <br/>
                                            02/04/2015
                                        </td>
                                        <td>
                                            02/03/2015 <br/>
                                            02/05/2015
                                        </td>

                                        <td>
                                            <form style="max-width: none; width: auto;
                                                  background-color: inherit;
                                                  margin-top: 0; padding-top: 0"
                                                  action="#">
                                                <button type="button" 
                                                        class="btn btn-sm btn-info openPopupAppraisalResult" 
                                                        style="width: auto">
                                                    Appraisal result
                                                </button>
                                            </form>
                                        </td> 

                                    </tr>
                                    <%--
                                    <c:set var="counter" value="${0}" />
                                    <c:forEach var="member" items="${listMember}" varStatus="counter">
                                        <c:set var="listWork" value="${member.workTracking}" />
                                        <tr>
                                            <td>${counter.count}</td>
                                            <td>
                                                <a href="#" class="openPopupProfile" name="${member.employeeUsername}">
                                                    ${member.employeeUsername}
                                                </a>
                                            </td>
                                            <td>${member.employeeName}</td>
                                            <td>
                                                <c:forEach var="work" items="${listWork}">
                                                    ${work.position} <br/>
                                                </c:forEach>
                                            </td>
                                            <td>
                                                <c:forEach var="work" items="${listWork}">
                                                    ${work.startDate} <br/>
                                                </c:forEach>
                                            </td>
                                            <td>
                                                <c:forEach var="work" items="${listWork}">
                                                    ${work.endDate} <br/>
                                                </c:forEach>
                                            </td>
                                            <td><button type="button" class="btn btn-sm btn-info openPopupAppraisal" style="width: auto">Evaluate</button></td> 
                                        </tr>
                                    </c:forEach>
                                    --%>
                                </tbody>
                            </table>
                        </div>
                    </c:if>           

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
    <%@include file="firstFoot.jsp" %>


