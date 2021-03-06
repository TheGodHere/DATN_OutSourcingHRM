<%@include file="firstHead.jsp" %>

<c:set var="maxpage" value="11" />
<c:set var="curpage" value="${param.page}" />
<c:set var="codeQ" value="${param.code}" />
<c:if test="${empty codeQ}">
    <c:set var="codeQ" value="OHRM" />
</c:if>

<c:set var="urlQ" value="knowledgeDetail.jsp?code=${codeQ}" />

<c:if test="${empty curpage}">
    <c:set var="curpage" value="1"/>
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
                <div>
                    <div style="font-size: 22px; color: black">
                        <a href="#">Project name</a> - Question: Where should we put SRS files?
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
                        <div class="posthead">05/22/2015, 10:02:25</div>
                        <table class="knowledge-topic">
                            <tr>
                                <td class="userInfo">
                                    <label>HoangLM2</label> <br/>
                                    <label>Engineer</label> <br/>
                                    <img src="img/avatar.JPG" style="margin-bottom: 10px" />
                                </td>
                                <td>
                                    <div class="knowledge-topic-title">Question: Where should we put SRS files?
                                        <button type="button" class="btn btn-warning editKnowledge">
                                            Edit</button>
                                    </div>

                                    <div class="knowledge-topic-content">I need to confirm customer's answer with the SRS documents. 
                                        Where can I found it in the tree project.
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <div class="topic-control">Last edit by HoangLM2 at: 05/23/2015, 10:02:25</div>
                    </div>
                    <%-- END TOPIC --%>
                    <%-- BEGIN COMMENT --%>
                    <div class="panel topic-comment">
                        <div class="commenthead">05/22/2015, 10:02:25</div>
                        <table class="knowledge-topic">
                            <tr>
                                <td class="userInfo">
                                    <label>HoangLM2</label> <br/>
                                    <label>Manager</label>
                                    <img src="img/avatar.JPG" style="margin-bottom: 10px" />
                                </td>
                                <td>
                                    <div class="knowledge-topic-comment">Re:Question: Where should we put SRS files?
                                        <button type="button" class="btn btn-warning editComment" onclick="editComment(1)">
                                            Edit</button>
                                    </div>

                                    <div id="comment1" class="knowledge-topic-content">
                                        I need to confirm customer's answer with the SRS documents. Where can I found it in the tree project.
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <div class="topic-control">Last edit by HoangLM2 at: 05/23/2015, 10:02:25</div>
                    </div>
                    <%-- END COMMENT --%>

                    <%-- BEGIN COMMENT --%>
                    <div class="panel topic-comment">
                        <div class="commenthead">05/22/2015, 10:02:25</div>
                        <table class="knowledge-topic">
                            <tr>
                                <td class="userInfo">
                                    <label>KienKhung</label> <br/>
                                    <label>Engineer</label>
                                    <img src="img/avatar.JPG" style="margin-bottom: 10px" />
                                </td>
                                <td>
                                    <div class="knowledge-topic-comment">Re:Question: Where should we put SRS files?
                                        <button type="button" class="btn btn-warning editComment" onclick="editComment(2)">
                                            Edit</button>
                                    </div>

                                    <div id="comment2" class="knowledge-topic-content">Who knows.
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>

                </div>
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
