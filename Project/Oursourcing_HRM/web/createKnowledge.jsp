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
            <h1 style="text-align: center">Knowledge</h1>
            <div>
                <div style="font-size: 22px; color: black; padding-bottom: 20px">
                    <a href="searchKnowledge.jsp?type=By+project&code=OHRM">${param.projectCode}</a>
                    - Create knowledge
                </div>
                <%-- BEGIN ADD NEW COMMENT --%>
                <div class="panel new-comment">
                    <div class="knowledge-topic-header">
                        <div style="padding: 10px 20px">Knowledge content</div>
                    </div>

                    <form id="formComment" style="max-width: none; margin: 0 0">
                        Title: <br/>
                        <input type="text" name="knowledgeTitle" class="knowledge-title-textbox" />
                        <br/>Content: <br/>
                        <textarea id="newComment" class="commentContent-textarea"></textarea>
                        <div style="height: 30px">
                            <input type="submit" class="btn btn-success" value="Post knowledge" style="float: right"/>
                        </div>

                    </form>

                </div>
                <%-- END ADD NEW COMMENT --%>
            </div>
    </div>
</main>
</div>

<%@include file="firstFoot.jsp" %>
