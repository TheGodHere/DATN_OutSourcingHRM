<%@include file="firstHead.jsp" %>

<c:set var="result" value="${requestScope.result}" />

<c:set var="maxpage" value="11" />
<c:set var="curpage" value="${param.page}" />
<c:set var="dept" value="${param.dept}" />
<c:set var="searchQ" value="${param.searchQ}" />
<c:if test="${empty dept}">
    <c:set var="dept" value="all"/>
</c:if>
<c:set var="urlQ" value="searchEmployee.jsp?dept=${dept}" />
<c:if test="${not empty searchQ}" >
    <c:set var="searchQ" value="${urlQ}&code=${searchQ}" />
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
            <div>
                <div class="row" style="margin: 20px 0">
                    <!--<label>Employee Name:</label>-->
                    <h2 style="text-align: center">Le Minh Hoang</h2>
                </div>
                <div class="row" style="margin: 20px 0">
                    <!--<h3 style="text-align: center">Assigned Projects</h3>-->
                    <div style="text-align: center; margin: 20px 0">
                        <font style="font-size: 20px; font-family: inherit; font-weight: 500; line-height: 1.1; color: inherit;">Assigned Projects</font>
                    </div>
                    <table class="table">
                        <thead>
                            <tr>  
                                <th>#</th>
                                <th>Project Code</th>
                                <th>Project Name</th>
                                <th>Position</th>
                                <th>Start date</th>
                                <th>End date</th>
                                <th>Point</th>
                                <th style="width: 55px"></th>
                            </tr>
                        </thead>
                        <tbody style="font-weight: normal">
                            <%--
                            <c:set var="result" value="${requestScope.LISTPRO}" />
                            <c:set var="maxpage" value="${result.size()}" />
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
                                </tr>
                            </c:forEach>
                            --%>
                            <tr>
                                <td>
                                    1
                                </td>
                                <td>
                                    OHRM 
                                </td>
                                <td>
                                    <label>Outsourcing HRM</label>
                                </td>
                                <td>Supporter</br>Developer</td>
                                <td>01/02/2015</br>03/05/2015</td>
                                <td>03/05/2015</br>02/07/2015</td>
                                <td style="text-align: center">
                                    7.0
                                </td>
                                <td>
                                    <input type="button" class="btn btn-sm btn-success" data-toggle="modal" data-target="#myModal" value="View appraisal result">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    2
                                </td>
                                <td>
                                    PCMS 
                                </td>
                                <td>
                                    <label>Purchase and Contract Management System</label>
                                </td>
                                <td>Tester</td>
                                <td>02/02/2015</td>
                                <td>03/03/2015</td>
                                <td style="text-align: center">
                                    8.0
                                </td>
                                <td>
                                    <input type="button" class="btn btn-sm btn-success" data-toggle="modal" data-target="#myModal" value="View appraisal result">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <hr>
                <div class="row" style="margin: 20px 0">
                    <!--<h3 style="text-align: center">Evaluation Form</h3>-->
                    <div style="text-align: center">
                        <font style="font-size: 25px; font-family: inherit; font-weight: 600; line-height: 1.1; color: #000000;">Evaluation Form</font>
                    </div>
                    <form style="max-width: none; border: 1px solid; background: #E8EEEF; color: #000000">
                        <div style="margin: 20px 0">
                            <label>Please evaluate this employee using the following criterion:</label>
                        </div>
                        <table>
                            <tr style="background: #FFFFFF">
                                <td style="text-align: center; vertical-align: top; width: 5%; padding: 10px">
                                    <label>1</label>
                                </td>
                                <td style="padding: 10px">
                                    <div>
                                        <label>Evaluation Criterion 1</label>
                                    </div>                                
                                    <div>
                                        <p style="margin: 0px 5%">This is description part for Evaluation Criterion 1</p>
                                    </div>
                                </td>
                                <td style="text-align: center; width: 10%; padding: 10px">
                                    <input type="text" style="margin: 0; width: 40px; background: #FFFFFF; border: 1px solid" >
                                    <label style="font-size: 17px !important">/10</label>
                                </td>
                            </tr>
                            <tr style="background: #FFFFFF">
                                <td style="text-align: center; vertical-align: top; width: 5%; padding: 10px">
                                    <label>2</label>
                                </td>
                                <td style="padding: 10px">
                                    <div>
                                        <label>Evaluation Criterion 2</label>
                                    </div>                                
                                    <div>
                                        <p style="margin: 0px 5%">This is description part for Evaluation Criterion 2</p>
                                    </div>
                                </td>
                                <td style="text-align: center; width: 10%; padding: 10px">
                                    <input type="text" style="margin: 0; width: 40px; background: #FFFFFF; border: 1px solid" >
                                    <label style="font-size: 17px !important">/10</label>
                                </td>
                            </tr>
                            <tr style="background: #FFFFFF">
                                <td style="text-align: center; vertical-align: top; width: 5%; padding: 10px">
                                    <label>3</label>
                                </td>
                                <td style="padding: 10px">
                                    <div>
                                        <label>Evaluation Criterion 3</label>
                                    </div>                                
                                    <div>
                                        <p style="margin: 0px 5%">This is description part for Evaluation Criterion 3</p>
                                    </div>
                                </td>
                                <td style="text-align: center; width: 10%; padding: 10px">
                                    <input type="text" style="margin: 0; width: 40px; background: #FFFFFF; border: 1px solid" >
                                    <label style="font-size: 17px !important">/10</label>
                                </td>
                            </tr>
                            <tr style="background: #FFFFFF">
                                <td style="text-align: center; padding: 10px">
                                </td>
                                <td style="text-align: right; padding: 10px">
                                    <label style="margin: 5px 5%">Average Point:</label>
                                </td>
                                <td style="text-align: center; width: 10%; padding: 10px">
                                    <input type="text" style="margin: 0; width: 40px; background: #FFFFFF; border: 1px solid" readonly value="7.8">
                                    <label style="font-size: 17px !important">/10</label>
                                </td>
                            </tr>                                
                            <tr style="background: #FFFFFF">
                                <td style="text-align: center; width: 10%; padding: 10px"></td>
                                <td style="padding: 10px" colspan="2">
                                    <label>Other opinion</label>
                                    <div>
                                        <textarea name="apprContent" style="width: 90%; border: 1px solid; resize: none; background: #FFFFFF" rows="7"></textarea>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <div style="text-align: center; margin: 20px 0">
                            <input type="button" class="btn btn-primary" value="Submit">
                            <input type="reset" class="btn btn-default" value="Cancel">
                        </div>
                    </form>
                </div>

                <%-- Begin popup --%>
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th style="width: 5%; text-align: center">
                                                #
                                            </th>
                                            <th style="width: 80%; text-align: center">
                                                Criterion
                                            </th>
                                            <th style="width: 15%; text-align: center">
                                                Point
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td style="text-align: center">
                                                <label>1</label>
                                            </td>
                                            <td>
                                                <div>
                                                    <label>Appraisal Criterion 1</label>
                                                </div>                                
                                                <div>
                                                    <p style="margin: 0px 5%">This is description part for Appraisal Criterion 1</p>
                                                </div>
                                            </td>
                                            <td style="text-align: center">
                                                <label style="font-size: 17px !important">10</label>
                                            </td>
                                        </tr>                        
                                        <tr>
                                            <td style="text-align: center">
                                                <label>2</label>
                                            </td>
                                            <td>
                                                <div>
                                                    <label>Appraisal Criterion 2</label>
                                                </div>                                
                                                <div>
                                                    <p style="margin: 0px 5%">This is description part for Appraisal Criterion 2</p>
                                                </div>
                                            </td>
                                            <td style="text-align: center">
                                                <label style="font-size: 17px !important">10</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center">
                                                <label>3</label>
                                            </td>
                                            <td>
                                                <div>
                                                    <label>Appraisal Criterion 3</label>
                                                </div>                                
                                                <div>
                                                    <p style="margin: 0px 5%">This is description part for Appraisal Criterion 3</p>
                                                </div>
                                            </td>
                                            <td style="text-align: center">
                                                <label style="font-size: 17px !important">10</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center">
                                            </td>
                                            <td style="text-align: right">
                                                <label style="margin: 5px 5%">Average Point:</label>
                                            </td>
                                            <td style="text-align: center">
                                                <label style="font-size: 17px !important">10</label>
                                            </td>
                                        </tr>                            
                                        <tr>
                                            <td></td>
                                            <td colspan="2">
                                                <label>Manager's opinion:</label>
                                                <textarea style="border: 1px solid; width: 90%; margin: 0 10px; resize: none" rows="5" readonly>This is other opinion of manager about engineer.</textarea>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal" style="width:auto">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>


    <%@include file="firstFoot.jsp" %>