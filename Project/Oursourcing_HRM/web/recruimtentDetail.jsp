<%-- 
    Document   : RecruimtentDetail
    Created on : May 30, 2015, 1:57:45 PM
    Author     : Jenny
--%>

<%@include file="firstHead.jsp" %>

<c:set var="recruitID" value="${requestScope.RECRUITMENTDETAIL}"/>
<c:set var="reply" value="${requestScope.RECRUITMENTREPLYDETAIL}"/>

<c:set var="maxpage" value="11" />
<c:set var="curpage" value="${param.page}" />
<c:set var="codeQ" value="${param.code}" />
<c:if test="${empty codeQ}">
    <c:set var="codeQ" value="OHRM" />
</c:if>

<c:set var="urlQ" value="recruimtentDetail.jsp?code=${codeQ}" />

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
                <div>
                    <div style="font-size: 22px; color: black">
                        <a href="#">Topic name</a> ${recruitID.title}
                    </div>
                </div>
                <div style="height: 40px">
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
                <%-- BEGIN TOPIC --%>
                <div class="panel" style="color: black">
                    <div class="panel">
                        <div class="posthead">${recruitID.recruitDate}</div>
                        <table class="knowledge-topic">
                            <tr>
                                <td class="userInfo">
                                    <label>${recruitID.director}</label> <br/>
                                    <label>${recruitID.roleName}</label> <br/>
                                    <img src="img/avatar.JPG" style="margin-bottom: 10px" />
                                </td>
                                <td>
                                    <div class="knowledge-topic-title">${recruitID.title}
                                        <button type="button" class="btn btn-warning editKnowledge">
                                            Edit</button>
                                    </div>

                                    <div class="knowledge-topic-content">${recruitID.recruitContent}
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <div class="topic-control">Last Edited: ${recruitID.lastEdit}</div>
                    </div>
                    <%-- END TOPIC --%>
                    <%-- BEGIN COMMENT --%>
                    <c:forEach var="rows" items="${reply}" >
                        <div class="panel topic-comment">
                            <div class="commenthead">${rows.replyDate}</div>
                            <table class="knowledge-topic">
                                <tr>
                                    <td class="userInfo">
                                        <label>${rows.poster}</label> <br/>
                                        <label>${rows.roleName}</label>
                                        <img src="img/avatar.JPG" style="margin-bottom: 10px" />
                                    </td>
                                    <td>
                                        <div class="knowledge-topic-comment"> ${recruitID.title}
                                            <button type="button" class="btn btn-warning editComment" onclick="editComment(1)">
                                                Edit</button>
                                        </div>

                                        <div id="comment1" class="knowledge-topic-content">${rows.replyContent}

                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <div class="topic-control">Last edit by HoangLM2 at: 05/23/2015, 10:02:25</div>
                        </div>
                    </c:forEach>
                        <%-- END COMMENT --%>

                    </div>

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
                    <%-- BEGIN ADD NEW COMMENT --%>
                    <div class="panel new-comment" style="margin-top: 60px">
                        <div class="commenthead">Add new comment</div>

                        <form id="formComment" style="max-width: inherit; margin: 0 0">
                            <textarea id="newComment" style="height: 100px; width: 100%; background-color: white"></textarea>
                            <div style="height: 30px">

                                <input type="submit" class="btn btn-success" value="Send" style="float: right"/>
                                <button class="btn btn-warning" id="stopEdit" onclick="stopEditComment()">Stop editting</button>
                            </div>

                        </form>

                    </div>
                    <%-- END ADD NEW COMMENT --%>
                </div>
            </main>
        </div>

        <%@include file="firstFoot.jsp" %>

