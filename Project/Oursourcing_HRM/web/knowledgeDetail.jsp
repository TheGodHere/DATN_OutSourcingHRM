<%@include file="firstHead.jsp" %>

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
                <h1 style="text-align: center">Knowledge</h1>
                <div>
                    <div style="font-size: 22px; color: black">
                        <a href="#">Project name</a> - Question: Where should we put SRS files?
                    </div>
                </div>
                <div style="height: 40px">
                    <div class="number-paging" style="float: right">
                        <a href="#">1</a>
                        ...
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#" class="current-page">5</a>
                        <a href="#">6</a>
                        <a href="#">7</a>
                        ...
                        <a href="#">11</a>
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
                                        <button type="button" class="btn btn-warning editKnowledge">Edit</button>
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
                                        <button type="button" class="btn btn-warning editKnowledge">Edit</button>
                                    </div>

                                    <div class="knowledge-topic-content">I need to confirm customer's answer with the SRS documents. 
                                        Where can I found it in the tree project.
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
                                        <button type="button" class="btn btn-warning editKnowledge">Edit</button>
                                    </div>

                                    <div class="knowledge-topic-content">Who knows.
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>

                </div>
                <%-- END COMMENT --%>
            </div>




            <div class="number-paging" style="float: right">
                <a href="#">1</a>
                ...
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#" class="current-page">5</a>
                <a href="#">6</a>
                <a href="#">7</a>
                ...
                <a href="#">11</a>
            </div>
            <%-- NEW COMMENT --%>
            <div class="panel new-comment" style="margin-top: 60px">
                <div class="commenthead">Add new comment</div>
                <form style="max-width: inherit; margin: 0 0">
                    <textarea style="height: 100px; width: 100%; background-color: white"></textarea>
                    <div style="height: 30px">
                        <input type="submit" class="btn btn-success" value="Send" style="float: right"/>
                    </div>
                </form>
            </div>
            <%-- END NEW COMMENT --%>
    </div>
</main>
</div>

<%@include file="firstFoot.jsp" %>
