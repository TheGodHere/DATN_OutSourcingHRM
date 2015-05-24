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
                <input type="button" class="btn btn-success" value="Create new knowledge" 
                       style="float: right">
                <ul class="nav nav-tabs ul-navtabs">
                    <li class="navbar-knowledge active"><a href="#">All knowledge</a></li>
                    <li class="navbar-knowledge"><a href="#">By project</a></li>
                </ul>
                <div class="tab-content" style="margin-top: 20px">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Topics</th>
                                <th>Replies</th>
                                <th>Last comment</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><a class="title" href="knowledgeDetail.jsp">Question: Where should we put SRS files?</a><br/>
                                    <div class="author">Started by: KienNT, 05/22/2015, 10:02:25</div>
                                </td>
                                <td>Replies: 50</td>
                                <td>HoangLM2 <br/>
                                    05/22/2015, 10:34:22 
                                </td>
                            </tr>
                            <tr>
                                <td><a class="title" href="knowledgeDetail.jsp">Question: Where should we put SRS files?</a><br/>
                                    <div class="author">Started by: KienNT, 05/22/2015, 10:02:25</div>
                                </td>
                                <td>Replies: 50</td>
                                <td>HoangLM2 <br/>
                                    05/22/2015, 10:34:22 
                                </td>
                            </tr>
                            <tr>
                                <td><a class="title" href="knowledgeDetail.jsp">Question: Where should we put SRS files?</a><br/>
                                    <div class="author">Started by: KienNT, 05/22/2015, 10:02:25</div>
                                </td>
                                <td>Replies: 50</td>
                                <td>HoangLM2 <br/>
                                    05/22/2015, 10:34:22 
                                </td>
                            </tr>
                        </tbody>
                    </table>
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
            </div>
        </main>
    </div>

    <%@include file="firstFoot.jsp" %>
