<%@include file="firstHead.jsp" %>

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
            <div id="tabs">
                <ul>
                    <li id="li_tab1" onclick="tab('info')"><a>Info</a></li>
                    <li id="li_tab2" onclick="tab('employee')"><a>Employee</a></li>
                    <li id="li_tab2" onclick="tab('knowledge')"><a>Knowledge</a></li>
                </ul>
                <div id="Content_Area" style="height: auto; background-color: buttonface;">
                    <div id="info">
                        <table style="width: 80%;margin: 0 auto">
                            <tr style="background-color: inherit">
                                <td style="width: 25%;">
                                    <label><font color="black">Project Name:</font></label>
                                </td>
                                <td style="width: 25%">
                                    <input type="text" id="name" class="projectTextbox" name="name" style="display: none;margin:5px 0;width: 200px"  >
                                    <label class="projectInfo">Pitch Perfect</label>
                                </td>                                
                                <td style="width: 25%;">
                                    <label style="margin-left: 10px"><font color="black">Manager:</font></label>
                                </td>
                                <td style="width: 25%">
                                    <input type="text" id="name" class="projectTextbox" name="name" style="display: none;margin:5px 0;width: 200px" >
                                    <label class="projectInfo">Anna Kendrick</label>
                                </td>                             
                            </tr>
                            <tr style="background-color: inherit">
                                <td style="width: 25%;">
                                    <label><font color="black">Description:</font></label>
                                </td>
                                <td style="width: 25%">
                                    <input type="text" id="name" class="projectTextbox" name="name" style="display: none;margin:5px 0;width: 200px">
                                    <label class="projectInfo">This website is for acapella band </label>
                                </td> 
                                <td style="width: 25%;">
                                    <label style="margin-left: 10px"><font color="black">Customer:</font></label>
                                </td>
                                <td style="width: 25%">
                                    <input type="text" id="name" class="projectTextbox" name="name" style="display: none;margin:5px 0;width: 200px">
                                    <label class="projectInfo">Empire Record Inc </label>
                                </td>
                            </tr>
                            <tr style="background-color: inherit">
                                <td style="width: 25%;">
                                    <label><font color="black">Start Date:</font></label>
                                </td>
                                <td style="width: 25%">
                                    <input type="text" id="name" class="projectTextbox" name="name" style="display: none;margin:5px 0;width: 200px" >
                                    <label class="projectInfo">23/05/2015 </label>
                                </td> 
                                <td style="width: 25%;">
                                    <label style="margin-left: 10px"><font color="black">End Date:</font></label>
                                </td>
                                <td style="width: 25%">
                                    <input type="text" id="name" class="projectTextbox" name="name" style="display: none;margin:5px 0;width: 200px">
                                    <label class="projectInfo">18/09/2015 </label>
                                </td> 
                            </tr>                           

                        </table>

                        <div id="btn-Editproject" class="btn-in-popup" style="margin-top: 25px" >
                            <input type="button" class="btn btn-warning editProfile" onclick="changeProject()" value="Edit Info"/>
                        </div>
                        <div id="btn-Submitproject" class="btn-in-popup" style="margin-top: 25px; display: none" >
                            <input class="btn btn-success" onclick="submitProject()" type="Submit" value="Submit" />
                        </div>

                    </div>

                    <div id="employee" style="display: none;">
                        <div>
                            <table class="table">  
                                <thead>  
                                    <tr>  
                                        <th>No #</th> 
                                        <th>Name</th>
                                        <th>Position</th>  
                                        <th>Assign Date</th> 
                                        <th>Type</th>
                                        <th></th>
                                        <th></th>
                                    </tr>  
                                </thead>  
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td><a href="#" class="openPopupProfile" name="beca">Beca</a></td>
                                        <td>Manager</td>
                                        <td>15/07/2015</td>  
                                        <td>Full-Time</td>
                                        <td><button type="button" class="btn btn-info openPopupAppraisal" style="width: auto">Evaluate</button></td> 
                                        <td><button type="button" class="btn btn-danger" style="width: auto">Remove</button></td>                                        
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td><a href="#" class="openPopupProfile" name="beca">Beca</a></td>
                                        <td>Manager</td>
                                        <td>15/07/2015</td>  
                                        <td>Full-Time</td>
                                        <td><button type="button" class="btn btn-info openPopupAppraisal" style="width: auto" >Evaluate</button></td> 
                                        <td><button type="button" class="btn btn-danger" style="width: auto" >Remove</button></td>                       
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td><a href="#" class="openPopupProfile" name="beca">Beca</a></td>
                                        <td>Manager</td>
                                        <td>15/07/2015</td>  
                                        <td>Full-Time</td>
                                        <td><button type="button" class="btn btn-info openPopupAppraisal" style="width: auto">Evaluate</button></td> 
                                        <td><button type="button" class="btn btn-danger" style="width: auto">Remove</button></td>                           
                                    </tr>
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
        document.getElementById('employee').style.display = 'none';
        document.getElementById('li_tab1').setAttribute("class", "");
        document.getElementById('li_tab2').setAttribute("class", "");
        document.getElementById(tab).style.display = 'block';
        document.getElementById('li_' + tab).setAttribute("class", "active");
    }
</script>
<%@include file="firstFoot.jsp" %>


