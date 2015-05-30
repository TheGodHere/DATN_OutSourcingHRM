<%@include file="firstHead.jsp" %>

<c:set var="listAppraisal" value="${requestScope.LIST_APPRAISAL}" />
<c:set var="listFeedback" value="${requestScope.LIST_FEEDBACK}" />

<c:if test="${empty typeQ}">
    <c:set var="typeQ" value="${requestScope.CRIT_TYPE}" />
</c:if>

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
                <h1 style="text-align: center">Criterion Management</h1>
                <input type="text" id="curType" value="${typeQ}" hidden>
                <form style="max-width: none; padding: 0">
                    <ul class="nav nav-tabs ul-navtabs">
                        <c:if test="${typeQ eq 'Appraisal'}" >
                            <li id="appraisal" class="navbar-knowledge active">
                                <input type="submit" class="btn" name="type" value="Appraisal" />
                            </li>
                            <li id="feedback" class="navbar-knowledge" >
                                <input type="submit" class="btn" name="type" value="Feedback" />
                            </li>
                        </c:if>
                        <c:if test="${typeQ eq 'Feedback'}" >
                            <li id="appraisal" class="navbar-knowledge">
                                <input type="submit" class="btn" name="type" value="Appraisal" />
                            </li>
                            <li id="feedback" class="navbar-knowledge active" >
                                <input type="submit" class="btn" name="type" value="Feedback" />
                            </li>
                        </c:if>
                    </ul>
                </form>

                <c:if test="${param.type eq 'Appraisal' || empty param.type}">
                    <div>
                        <div style="margin: 20px 0">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th style="width: 70%; text-align: center">
                                            Criterion
                                        </th>
                                        <th style="width: 15%; text-align: center">
                                            Max point
                                        </th>
                                        <th style="width: 15%; text-align: center">
                                            Action
                                        </th>
                                    </tr>
                                </thead>
                                <tbody id="workTable">
                                    <c:forEach items="${listAppraisal}" var="crit" varStatus="counter" >
                                        <tr>
                                            <td>
                                                <div>
                                                    <label id="critId${crit.critID}" hidden>${crit.critID}</label>
                                                    <label id="type${crit.critID}" hidden>${crit.type}</label>
                                                    <label id="title${crit.critID}">${crit.title}</label>
                                                </div>                                
                                                <div>
                                                    <p id="desc${crit.critID}" style="margin: 0px 5%">${crit.description}</p>
                                                </div>
                                            </td>
                                            <td style="text-align: center">
                                                <label style="font-size: 17px !important" id="mPoint${crit.critID}">${crit.maxPoint}</label>
                                            </td>
                                            <td>
                                                <input type="button" class="btn btn-sm btn-primary editCriterionPopup" name="${crit.critID}" value="Edit">
                                                <input type="button" class="btn btn-sm btn-danger" value="Delete">
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div style="text-align: center; margin: 20px 0">
                            <input type="button" class="btn btn-success addCriterionPopup" value="Add new criterion">
                        </div>
                    </div>
                </c:if>
                <c:if test="${param.type eq 'Feedback' && empty param.code}">
                    <div>
                        <div style="margin: 20px 0">
                            <table class="table">
                                <thead>
                                    <tr>                                        
                                        <th style="width: 70%; text-align: center">
                                            Criterion
                                        </th>
                                        <th style="width: 15%; text-align: center">
                                            Max point
                                        </th>
                                        <th style="width: 15%; text-align: center">
                                            Action
                                        </th>
                                    </tr>
                                </thead>
                                <tbody id="workTableF">
                                    <c:forEach items="${listFeedback}" var="crit" varStatus="counter" >
                                        <tr>                                            
                                            <td>
                                                <div>
                                                    <label id="critId${crit.critID}" hidden>${crit.critID}</label>
                                                    <label id="type${crit.critID}" hidden>${crit.type}</label>
                                                    <label id="title${crit.critID}">${crit.title}</label>
                                                </div>                                
                                                <div>
                                                    <p id="desc${crit.critID}" style="margin: 0px 5%">${crit.description}</p>
                                                </div>
                                            </td>
                                            <td style="text-align: center">
                                                <label style="font-size: 17px !important" id="mPoint${crit.critID}">${crit.maxPoint}</label>
                                            </td>
                                            <td>
                                                <input type="button" class="btn btn-sm btn-primary editCriterionPopup" name="${crit.critID}" value="Edit">
                                                <input type="button" class="btn btn-sm btn-danger" value="Delete">
                                            </td>
                                        </tr>
                                    </c:forEach> 
                                </tbody>
                            </table>
                        </div>
                        <div style="text-align: center; margin: 20px 0">
                            <input type="button" class="btn btn-success addCriterionPopup" value="Add new criterion">
                        </div>
                    </div>
                </c:if>

                <c:if test="${param.type eq 'evaluation' && not empty param.code}">
                    <div class="tab-content" style="margin-top: 20px">

                    </div>
                </c:if>

                <div id="dialog-form-criterion" style="display: none; background-color: white">
                    <h1>Criterion</h1>
                    <!--<form style="max-width: 80%; background-color: transparent">-->                        
                        <div style="width: 80%; float: left">
                            <label style="margin: 20px 0; padding:5px; width: 15%">Title</label>
                            <input id="formCriterionId" type="text" hidden>
                            <input id="formCriterionType" type="text" hidden>
                            <input id="formCriterionTitle" type="text">
                        </div>
                        <div style="width: 20%; float: right">
                            <label style="margin: 20px 0; padding:5px;">Max point</label>
                            <input id="formCriterionMaxPoint" type="text" style="max-width: 40px;" maxlength="3">
                        </div>
                        <div style="width: 80%; margin: 20px 0;">
                            <label style="margin: 20px 0; padding:5px; width: 15%;vertical-align: top">Description</label>
                            <textarea id="formCriterionDescription" rows="5"></textarea>
                        </div>
                        <div style="width: 100%; text-align: center">
                            <input id="criterionSaveBtn" type="submit" class="btn btn-primary" value="Save">
                            <input type="reset" class="btn btn-default" value="Reset">
                        </div>
                    <!--</form>-->
                    <div id="form-test" hidden></div>
                </div>
            </div>
        </main>
    </div>

    <%@include file="firstFoot.jsp" %>

