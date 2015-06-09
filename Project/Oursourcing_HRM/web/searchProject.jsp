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
            <div style="font-weight: 700; color: #333;">
                <h1 style="text-align: center">Search Project</h1>
                <div style="margin-bottom: 20px">
                    <form action="ListAllProject" style="background-color: inherit; display: inline">
                        Project code
                        <input type="text" name="projname" value="${param.code}" style="width: 15%">
                        From: 
                        <input  name ="date1" type="text" id="datepicker1" style="width: 12%" value="${param.date1}">
                        To:
                        <input  name ="date2" type="text" id="datepicker2" style="width: 12%" value="${param.date2}">

                        <%--<select style=" width: 15%" name="year">
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


                        </select>--%>

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
                            <th>Project Code</th>  
                            <th>Project Name</th>  
                            <th>Skill</th>  
                            <th>Start date</th>  
                            <th>End date</th>  
                            <th>Customer</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody style="font-weight: normal">

                        <c:set var="result" value="${requestScope.LISTPRO}" />
                        <c:set var="maxpage" value="${param.maxpage}" />
                        <c:forEach var="proj" items="${result}" varStatus="counter" >
                            <tr>
                                <td>
                                    ${counter.count}
                                </td>
                                <td>
                                    ${proj.projectCode}
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
                                <td>Working</td>
                            </tr>
                        </c:forEach>
                        <tr style="background-color: #fcb322">
                            <tr>
                            <td>
                                2
                            </td>
                            <td>
                                KPMG 
                            </td>
                            <td>
                                <a href="ProjectDetailServlet?btAction=pdetail&projCode=KPMG" >
                                    KPMG 
                                </a>
                            </td>
                            <td>
                                Java
                            </td>
                            <td>02/02/2015</td>
                            <td>03/07/2015</td>
                            <td>ThienLGT</td>
                            <td><label  class="status-done">Done</label></td>
                        </tr>
                        <tr>
                            <td>
                                3
                            </td>
                            <td>
                                KPMG 
                            </td>
                            <td>
                                <a href="ProjectDetailServlet?btAction=pdetail&projCode=KPMG" >
                                    KPMG 
                                </a>
                            </td>
                            <td>
                                Java
                            </td>
                            <td>02/02/2015</td>
                            <td>03/03/2015</td>
                            <td>ThienLGT</td>
                            <td><label class="status-close">Closed</label></td>
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
        </main>
    </div>
    <script>
        $(function() {
            $("#datepicker1").datepicker();
        });
    </script>
    <script>
    $(function() {
        $("#datepicker2").datepicker();
    });
</script>
    <%@include file="firstFoot.jsp" %>