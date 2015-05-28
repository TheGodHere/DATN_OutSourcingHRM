<%@include file="firstHead.jsp" %>

<c:set var="maxpage" value="11" />
<c:set var="curpage" value="${param.page}" />
<c:set var="typeQ" value="${param.type}" />
<c:set var="codeQ" value="${param.code}" />
<c:if test="${empty typeQ}">
    <c:set var="typeQ" value="Project Appraisal" />
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

                <form style="max-width: none; padding: 0">
                    <ul class="nav nav-tabs ul-navtabs">
                        <c:if test="${typeQ eq 'Project Appraisal'}" >
                            <li id="appraisal" class="navbar-knowledge active">
                                <input type="submit" class="btn" name="type" value="Project Appraisal" />
                            </li>
                            <li id="feedback" class="navbar-knowledge" >
                                <input type="submit" class="btn" name="type" value="Customer Feedback" />
                            </li>
                        </c:if>
                        <c:if test="${typeQ eq 'Customer Feedback'}" >
                            <li id="appraisal" class="navbar-knowledge">
                                <input type="submit" class="btn" name="type" value="Project Appraisal" />
                            </li>
                            <li id="feedback" class="navbar-knowledge active" >
                                <input type="submit" class="btn" name="type" value="Customer Feedback" />
                            </li>
                        </c:if>
                    </ul>
                </form>

                <c:if test="${param.type eq 'Project Appraisal' || empty param.type}">
                    <div class="tab-content" style="margin-top: 20px">

                    </div>
                </c:if>
                <c:if test="${param.type eq 'Customer Feedback' && empty param.code}">
                    <div>
                        <div style="margin: 20px 0">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th style="width: 5%; text-align: center">
                                            #
                                        </th>
                                        <th style="width: 70%; text-align: center">
                                            Criterion
                                        </th>
                                        <th style="width: 10%; text-align: center">
                                            Max point
                                        </th>
                                        <th style="width: 15%; text-align: center">
                                            Action
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
                                                <label>Criterion 1</label>
                                            </div>                                
                                            <div>
                                                <fieldset style="margin: 0px 5%">
                                                    This description is description of criterion 1
                                                </fieldset>
                                            </div>
                                        </td>
                                        <td style="text-align: center">
                                            <input type="text" style="margin: 0; width: 40%" hidden>
                                            <label style="font-size: 17px !important">10</label>
                                        </td>
                                        <td>
                                            <input type="button" class="btn btn-sm btn-primary" value="Edit">
                                            <input type="button" class="btn btn-sm btn-danger" value="Delete">
                                            <input type="button" class="btn btn-sm btn-success hidden" value="Save">
                                            <input type="button" class="btn btn-sm btn-default hidden" value="Cancel">
                                        </td>
                                    </tr>                        
                                    <tr>
                                        <td style="text-align: center">
                                            <label>2</label>
                                        </td>
                                        <td>
                                            <label>Criterion 2</label>
                                            <fieldset style="margin: 0px 5%">
                                                This description is description of criterion 2
                                            </fieldset>
                                        </td>
                                        <td style="text-align: center">
                                            <input type="text" style="margin: 0; width: 40%" hidden>
                                            <label style="font-size: 17px !important">10</label>
                                        </td>
                                        <td>
                                            <input type="button" class="btn btn-sm btn-primary" value="Edit">
                                            <input type="button" class="btn btn-sm btn-danger" value="Delete">
                                            <input type="button" class="btn btn-sm btn-success hidden" value="Save">
                                            <input type="button" class="btn btn-sm btn-default hidden" value="Cancel">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center">
                                            <label>3</label>
                                        </td>
                                        <td>
                                            <label>Criterion 3</label>
                                            <fieldset style="margin: 0px 5%">
                                                This description is description of criterion 3
                                            </fieldset>
                                        </td>
                                        <td style="text-align: center">
                                            <input type="text" style="margin: 0; width: 40%" hidden>
                                            <label style="font-size: 17px !important">10</label>
                                        </td>
                                        <td>
                                            <input type="button" class="btn btn-sm btn-primary" value="Edit">
                                            <input type="button" class="btn btn-sm btn-danger" value="Delete">
                                            <input type="button" class="btn btn-sm btn-success hidden" value="Save">
                                            <input type="button" class="btn btn-sm btn-default hidden" value="Cancel">
                                        </td>
                                    </tr>
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
                    <h1>Add new criterion</h1>
                    <form style="max-width: 80%; background-color: transparent">                        
                        <div style="width: 80%; float: left">
                            <label style="margin: 20px 0; padding:5px; width: 15%">Title</label>
                            <input type="text" style="">
                        </div>
                        <div style="width: 20%; float: right">
                            <label style="margin: 20px 0; padding:5px;">Max point</label>
                            <input type="text" style="max-width: 40px;" maxlength="3">
                        </div>
                        <div style="width: 80%; margin: 20px 0;">
                            <label style="margin: 20px 0; padding:5px; width: 15%;vertical-align: top">Description</label>
                            <textarea rows="5"></textarea>
                        </div>
                        <div style="width: 100%; text-align: center">
                            <input type="button" class="btn btn-primary" value="Save">
                            <input type="reset" class="btn btn-default" value="Reset">
                        </div>
                    </form>
                </div>
            </div>
        </main>
    </div>

    <%@include file="firstFoot.jsp" %>

