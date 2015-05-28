<%@include file="firstHead.jsp" %>

<c:set var="btAction" value="${param.btAction}" />
<c:set var="projname" value="${param.projname}" />
<c:set var="curpage" value="${param.page}" />
<c:set var="year" value="${param.year}" />
<c:set var="codeQ" value="${param.code}" />
<c:if test="${empty year}">
    <c:set var="year" value="2015" />
</c:if>

<c:set var="urlQ" value="searchProject.jsp?year=${year}" />

<c:if test="${not empty btAction}" >
    <c:set var="urlQ" value="${urlQ}&btAction=${btAction}" />
</c:if>
<c:if test="${not empty projname}" >
    <c:set var="urlQ" value="${urlQ}&projname=${projname}" />
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
            <div style="font-weight: 700; color: #333;">
                <h1 style="text-align: center">Search Project</h1>
                <div style="margin-bottom: 20px">
                    <form action="ListAllProject" style="background-color: inherit; display: inline">
                        Project name
                        <input type="text" name="projname" value="${param.projname}" style="width: 15%">
                        in Year 

                        <select style=" width: 15%" name="year">
                            <c:if test="${param.year eq '2014'}" >
                                <option value="2015">2015</option>
                                <option value="2014" selected="true">2014</option>
                                <option value="2013">2013</option>
                                <option value="0">All project</option>
                            </c:if>
                            <c:if test="${param.year eq '2013'}" >
                                <option value="2015">2015</option>
                                <option value="2014">2014</option>
                                <option value="2013" selected="true">2013</option>
                                <option value="0">All project</option>
                            </c:if>
                            <c:if test="${param.year eq '0'}" >
                                <option value="2015">2015</option>
                                <option value="2014">2014</option>
                                <option value="2013">2013</option>
                                <option value="0" selected="true">All project</option>
                            </c:if>
                            <c:if test="${param.year eq '2015' || empty param.year}" >
                                <option value="2015" selected="true">2015</option>
                                <option value="2014">2014</option>
                                <option value="2013">2013</option>
                                <option value="0">All project</option>
                            </c:if>


                        </select>
                        
                        <button type="submit" class="btn btn-success" name="btAction" 
                                value="search project" style="width: auto">
                            Search
                        </button>
                    </form>
                </div>

                <table class="table">
                    <thead>
                        <tr>  
                            <th>#</th>  
                            <th>Project Name</th>  
                            <th>Skill</th>  
                            <th>Start date</th>  
                            <th>End date</th>  
                            <th>Customer</th>
                        </tr>
                    </thead>
                    <tbody>

                        <c:set var="result" value="${requestScope.LISTPRO}" />
                        <c:set var="maxpage" value="${result.size()}" />
                        <c:forEach var="proj" items="${result}" varStatus="counter" >
                            <tr>
                                <td>
                                    ${counter.count}
                                </td>
                                <td>
                                    <a href="ProjectDetailServlet?btAction=pdetail&projCode=${proj.projectCode}" >
                                        ${proj.projectName}
                                    </a>
                                </td>
                                <td>
                                    <c:forEach var="skill" items="${proj.listOfSkill}" >
                                        ${skill.skillName} <br/>
                                    </c:forEach>
                                </td>
                                <td>${proj.startDate}</td>
                                <td>${proj.endDate}</td>
                                <td>${proj.customerName}</td>
                            </tr>
                        </c:forEach>

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
        </main>
    </div>
    <%@include file="firstFoot.jsp" %>