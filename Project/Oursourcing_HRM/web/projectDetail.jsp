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
            <h1 style="text-align: center">Project Details</h1>
            <div id="tabs" class="tabs-customized">
                <ul>
                    <li id="li_info" onclick="tab('info')" class="active" ><a>Info</a></li>
                    <li id="li_member" onclick="tab('member')"><a>Employee</a></li>
                    <li id="li_knowledge" onclick="tab('knowledge')"><a>Knowledge</a></li>
                </ul>
                <div id="Content_Area" style="height: auto; background-color: buttonface;">
                    <div id="info">
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

                    <div id="member" style="display: none;">
                        <div>
                            <table class="table">  
                                <thead>  
                                    <tr>  
                                        <th>#</th> 
                                        <th>ID</th> 
                                        <th>Full Name</th>
                                        <th>Position</th>  
                                        <th>Start Date</th> 
                                        <th>Work Type</th>
                                        <th></th>
                                        <th></th>
                                    </tr>  
                                </thead>  
                                <tbody>
                                    <c:set var="counter" value="${0}" />
                                    <c:forEach var="member" items="${listMember}">
                                        <c:set var="listWork" value="${member.workTracking}" />
                                        <c:forEach var="work" items="${listWork}" varStatus="counter">
                                            <tr>
                                                <td>${counter.count}</td>
                                                <td>
                                                    <a href="#" class="openPopupProfile" name="${member.employeeUsername}">
                                                        ${member.employeeUsername}
                                                    </a>
                                                </td>
                                                <td>${member.employeeName}</td>
                                                <td>${work.position}</td>
                                                <td>${work.startDate}</td>  
                                                <c:if test="${not member.isPartTime}" >
                                                    <td>Full-time</td>
                                                </c:if>
                                                <c:if test="${member.isPartTime == true}" >
                                                    <td>Part-time</td>
                                                </c:if>
                                                <td><button type="button" class="btn btn-info openPopupAppraisal" style="width: auto">Evaluate</button></td> 
                                                <td><button type="button" class="btn btn-warning" style="width: auto">Edit</button></td>                                        
                                            </tr>
                                        </c:forEach>
                                    </c:forEach>
                                </tbody>
                            </table>

                            <button type="button" class="btn btn-success assignPopup" style="width: auto">Add more engineers</button>
                        </div>
                    </div>

                    <div id="knowledge" style="display: none">
                        <div class="tab-content" style="margin-top: 20px">
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
                    </div>

                </div>
            </div>
        </main>
    </div>
    <script type="text/javascript">
        function tab(tab) {
            document.getElementById('info').style.display = 'none';
            document.getElementById('member').style.display = 'none';
            document.getElementById('knowledge').style.display = 'none';
            document.getElementById('li_info').setAttribute("class", "");
            document.getElementById('li_member').setAttribute("class", "");
            document.getElementById('li_knowledge').setAttribute("class", "");
            document.getElementById(tab).style.display = 'block';
            document.getElementById('li_' + tab).setAttribute("class", "active");
        }
    </script>
    <%@include file="firstFoot.jsp" %>


