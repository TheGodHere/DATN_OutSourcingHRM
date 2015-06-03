<%@include file="firstHead.jsp" %>

<c:set var="maxpage" value="11" />
<c:set var="curpage" value="${param.page}" />
<c:set var="typeQ" value="${param.type}" />
<c:set var="codeQ" value="${param.code}" />
<c:if test="${empty typeQ}">
    <c:set var="typeQ" value="All knowledge" />
</c:if>

<c:set var="urlQ" value="searchKnowledge.jsp?type=${typeQ}" />

<c:if test="${empty curpage}">
    <c:set var="curpage" value="1"/>
</c:if>
<c:if test="${not empty codeQ}" >
    <c:set var="urlQ" value="${urlQ}&code=${codeQ}" />
</c:if>

<div class="wrapper row2" style="padding-top: 40px">
    <div class="rounded">
        <nav id="mainav" class="clear"> 
            <!-- ################################################################################################ -->
            <div style="margin-left: 10%; margin-right: 10%">
                <ul  class="clear">
                    <li><a href="CenterServlet?btAction=listAllProject">Project</a></li>
                    <li><a href="CenterServlet?btAction=SearchEmployee">Employee</a></li>
                    <li><a href="searchKnowledge.jsp">Knowledge</a></li>
                    <li><a href="CenterServlet?btAction=Timesheet">Time sheet</a></li>
                    <li><a href="listEmpForEva.jsp">Evaluation</a></li>       
                </ul>
            </div>
        </nav>
    </div>
</div>

<div class="wrapper row3">
    <div class="rounded">
        <main class="container clear" style="width: 100%"> 
            <div>
                <h1 style="text-align: center">Knowledge</h1>

                <form action="createKnowledge.jsp" style="max-width: none; padding: 0">
                    <input type="hidden" name="projectCode" value="OHRM" readonly="readonly" />
                    <input type="submit" class="btn btn-success" value="Create new knowledge" 
                           style="float: right">
                </form>
                <form style="max-width: none; padding: 0">
                    <ul class="nav nav-tabs ul-navtabs">
                        <c:if test="${typeQ eq 'All knowledge'}" >
                            <li id="allKnowledge" class="navbar-knowledge active">
                                <input type="submit" class="btn" name="type" value="All knowledge" />
                                <!--All knowledge-->
                            </li>
                            <li id="knowledgeByProject" class="navbar-knowledge" >
                                <input type="submit" class="btn" name="type" value="By project" />
                            </li>
                        </c:if>
                        <c:if test="${typeQ eq 'By project'}" >
                            <li id="allKnowledge" class="navbar-knowledge">
                                <input type="submit" class="btn" name="type" value="All knowledge" />
                                <!--All knowledge-->
                            </li>
                            <li id="knowledgeByProject" class="navbar-knowledge active" >
                                <input type="submit" class="btn" name="type" value="By project" />
                            </li>
                        </c:if>
                    </ul>
                </form>

                <c:if test="${param.type eq 'All knowledge' || empty param.type}">
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
                </c:if>
                <c:if test="${param.type eq 'By project' && empty param.code}">
                    <div>
                        <div >
                            Year 
                            <select style=" width: 15%" onchange="">
                                <optgroup label="Year">
                                    <option value="all">All</option>
                                    <option value="Department 1">2015</option>
                                    <option value="Department 2">2014</option>
                                    <option value="Department 3">2013</option>
                                    <option value="Department 4">2012</option>
                                </optgroup>
                            </select>

                        </div>

                        <table id="projectTbl" class="table table-striped display">  
                            <thead>  
                                <tr>  
                                    <th>#</th>  
                                    <th>Code</th>  
                                    <th>Project Name</th>  
                                    <th>Manager</th>  
                                    <th>Language</th>  
                                    <th>End date</th>  
                                    <th>Customer</th>
                                </tr>  
                            </thead>  
                            <tbody>  

                                <tr>  
                                    <td>001</td>  
                                    <td>OHRM</td>  
                                    <td>
                                        <a href="searchKnowledge.jsp?type=By+project&code=OHRM">
                                            Outscouring HR management
                                        </a>
                                    </td>  
                                    <td>Anna</td>  
                                    <td>Java</td>  
                                    <td>22/06/2015</td>  
                                    <td>Pitch Inc</td>  
                                </tr>  
                                <tr>  
                                    <td>002</td>  
                                    <td>MSSC</td>  
                                    <td>
                                        <a href="searchKnowledge.jsp?type=By+project&code=MSSC">
                                            Manufacturing Skill Standards Council
                                        </a>
                                    </td>  
                                    <td>Anna</td>  
                                    <td>Java</td>  
                                    <td>22/06/2015</td>  
                                    <td>Pitch Inc</td> 
                                </tr>  

                                <%--<%@include file="testPopup.jsp" %>--%>
                            </tbody>  
                        </table>
                    </div>
                </c:if>

                <c:if test="${param.type eq 'By project' && not empty param.code}">
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
                </c:if>
            </div>
        </main>
    </div>

    <%@include file="firstFoot.jsp" %>
