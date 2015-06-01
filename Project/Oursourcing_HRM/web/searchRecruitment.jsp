<%-- 
    Document   : searchRecruitment
    Created on : May 30, 2015, 1:51:54 PM
    Author     : Jenny
--%>

<%@include file="firstHead.jsp" %>


<c:set var="result" value="${requestScope.RECRUITMENT}"/>
<c:set var="maxpage" value="${result.size()}" />
<c:set var="curpage" value="${param.page}" />

<c:set var="urlQ" value="SearchRecruitmentServlet?" />

<c:if test="${empty curpage}">
    <c:set var="curpage" value="1"/>
</c:if>



<div class="wrapper row2" style="padding-top: 40px">
    <div class="rounded">
        <nav id="mainav" class="clear"> 
            <!-- ################################################################################################ -->
            <div style="margin-left: 10%; margin-right: 10%">
                <ul class="clear">
                    <li class="active navbar-main" onclick="ChangeContentTab('home', 'content_homepage')"><a href="#">Home</a></li>
                    <li class="navbar-main" onclick="ChangeContentTab('project', 'content_homepage')"><a href="#">Project</a></li>
                    <li class="navbar-main" onclick="ChangeContentTab('employee', 'content_homepage')"><a href="#">Employee</a></li>
                    <li class="navbar-main" onclick="ChangeContentTab('knowledge', 'content_homepage')"><a href="#">Knowledge</a></li>
                </ul>
            </div>
        </nav>
    </div>
</div>

<div class="wrapper row3">
    <div class="rounded">
        <main class="container clear" style="width: 100%"> 
            <div>
                <h1 style="text-align: center">Recruitment</h1>

                <form action="CenterServlet" method="get" class="form-search" style="max-width: none;text-align: right;">
                    <div>
                        <input type="text" name="txtSearch" value="${param.txtSearch}" style="width: 50%"/>
                        <input type="submit" name="btAction" value="SearchRecruitment" />
                    </div>
                    <input type="submit" class="btn btn-success" name="btAction" value="Create new recruitment" 
                           style="float: right">
                </form>                


                <div>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Topics</th>
                                <!--<th>Director</th>-->
                                <th>Replies</th>
                                <th>Last comment</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="rows" items="${result}" >
                                <tr>
                                    <td>
                                        <c:url var="deleteLink" value="CenterServlet">
                                            <c:param name="recruitID" value="${rows.recruitID}"/>  
                                            <c:param name="btAction" value="ViewRecruitmentDetail"/>
                                        </c:url>
                                        <a class="title" href="${deleteLink}">${rows.title}</a><br/>
                                        <div class="author">Started by: ${rows.director}, ${rows.recruitDate}</div>
                                    </td>
                                    <%--<td>${rows.director}</td>--%>
                                    <td>${rows.reply}</td>
                                    <td>${rows.lastPoster}, ${rows.lastCommentDate} <br/>

                                    </td>
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


            </div>
        </main>
    </div>

    <%@include file="firstFoot.jsp" %>
