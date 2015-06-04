<%@include file="firstHead.jsp" %>

<c:set var="listAppraisal" value="${requestScope.LIST_APPRAISAL}" />
<c:set var="listFeedback" value="${requestScope.LIST_FEEDBACK}" />

<c:if test="${empty typeQ}">
    <c:set var="typeQ" value="${requestScope.CRIT_TYPE}" />
</c:if>

<div class="wrapper row2">
    <div class="rounded">
        <nav id="mainav" class="mainav"> 
            <!-- ################################################################################################ -->
            <div class="mainav" style="margin-left: 10%; margin-right: 10%">
                <ul  class="clear">
                    <li class="active" onclick="ChangeContentTab('home')"><a href="#home">Project</a></li>
                    <li onclick="ChangeContentTab('work')"><a href="#work">Employee</a></li>
                    <li onclick="ChangeContentTab('recruitment')"><a href="#recruitment">Knowledge</a></li>
                    <li onclick="ChangeContentTab('employee')"><a href="#employee">Time sheet</a></li>
                    <li onclick="ChangeContentTab('knowledge')"><a href="#knowledge">Evaluation</a></li>       
                </ul>
            </div>
            <!-- ################################################################################################ --> 
        </nav>
    </div>
</div>
<div class="wrapper row3">
    <div class="rounded">
        <main class="container clear" style="width: 100%">
            <h2 style="text-align: center">Criterion</h2>

            <div id="tabs" class="tabs-customized">
                <ul>
                    <li id="li_appraisal" class="active tab-pdetail" onclick="tab('appraisal')" ><a>Appraisal</a></li>
                    <li id="li_feedback" class="tab-pdetail" onclick="tab('feedback')"><a>Feedback</a></li>
                    <li id="li_evaluation" class="tab-pdetail" onclick="tab('evaluation')"><a>Evaluation</a></li>
                </ul>
                <div id="Content_Area" style="height: auto; background-color: buttonface;">
                    <div id="appraisal" class="tab-content-pdetail">
                        <div class="row" style="margin: 20px 0">
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
                                                <input type="button" class="btn btn-sm btn-primary editCriterionPopup" data-toggle="modal" 
                                                       data-target="#criterion-modal" name="${crit.critID}" value="Edit">
                                                <input type="button" class="btn btn-sm btn-danger removeCriterion" name="${crit.critID}" value="Delete">
                                            </td>
                                        </tr>
                                    </c:forEach>
<!--                                    <tr>
                                        <td>
                                            <div>
                                                <label id="critId1" hidden>1</label>
                                                <label id="type1" hidden>Appraisal</label>
                                                <label id="title1">Appraisal Criterion 1</label>
                                            </div>                                
                                            <div>
                                                <p id="desc1" style="margin: 0px 5%">This is description of Appraisal Criterion 1</p>
                                            </div>
                                        </td>
                                        <td style="text-align: center">
                                            <label style="font-size: 17px !important" id="mPoint1">10</label>
                                        </td>
                                        <td>
                                            <input type="button" class="btn btn-sm btn-primary editCriterionPopup" data-toggle="modal" data-target=".bs-criterion-modal-lg" name="1" value="Edit">
                                            <input type="button" class="btn btn-sm btn-danger removeCriterion" name="1" value="Delete">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div>
                                                <label id="critId2" hidden>2</label>
                                                <label id="type2" hidden>${crit.type}</label>
                                                <label id="title2">Appraisal Criterion 2</label>
                                            </div>                                
                                            <div>
                                                <p id="desc2" style="margin: 0px 5%">This is description of Appraisal Criterion 2</p>
                                            </div>
                                        </td>
                                        <td style="text-align: center">
                                            <label style="font-size: 17px !important" id="mPoint2">10</label>
                                        </td>
                                        <td>
                                            <input type="button" class="btn btn-sm btn-primary editCriterionPopup" data-toggle="modal" data-target=".bs-criterion-modal-lg" name="2" value="Edit">
                                            <input type="button" class="btn btn-sm btn-danger removeCriterion" name="2" value="Delete">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div>
                                                <label id="critId3" hidden>3</label>
                                                <label id="type3" hidden>${crit.type}</label>
                                                <label id="title3">Appraisal Criterion 3</label>
                                            </div>                                
                                            <div>
                                                <p id="desc3" style="margin: 0px 5%">This is description of Appraisal Criterion 3</p>
                                            </div>
                                        </td>
                                        <td style="text-align: center">
                                            <label style="font-size: 17px !important" id="mPoint3">10</label>
                                        </td>
                                        <td>
                                            <input type="button" class="btn btn-sm btn-primary editCriterionPopup" data-toggle="modal" data-target=".bs-criterion-modal-lg" name="3" value="Edit">
                                            <input type="button" class="btn btn-sm btn-danger removeCriterion" name="3" value="Delete">
                                        </td>
                                    </tr>-->
                                </tbody>
                            </table>
                        </div>
                        <div class="row" style="text-align: center; margin: 20px 0">
                            <input type="button" class="btn btn-success addCriterionPopup" data-toggle="modal" 
                                   data-target="#criterion-modal" value="Add new criterion">
                        </div>
                    </div>

                    <div id="feedback" class="tab-content-pdetail" style="display: none;">
                        <div  class="row" style="margin: 20px 0">
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
                                                <input type="button" class="btn btn-sm btn-primary editCriterionPopup" data-toggle="modal" 
                                                       data-target="#criterion-modal" name="${crit.critID}" value="Edit">
                                                <input type="button" class="btn btn-sm btn-danger removeCriterion" name="${crit.critID}" value="Delete">
                                            </td>
                                        </tr>
                                    </c:forEach> 
                                </tbody>
                            </table>
                        </div>
                        <div class="row" style="text-align: center; margin: 20px 0">
                            <!--<input type="button" class="btn btn-success addCriterionPopup" value="Add new criterion">-->
                            <input type="button" class="btn btn-success addCriterionPopup" 
                                   data-toggle="modal" data-target="#criterion-modal" value="Add new criterion">
                        </div>
                    </div>

                    <div id="evaluation" class="tab-content-pdetail" style="display: none">
                        hihi
                    </div>                    
                </div>

                <%-- Begin popup --%>
                <div class="modal fade bs-criterion-modal-lg" tabindex="-1" 
                     role="dialog" aria-labelledby="myLargeModalLabel" 
                     aria-hidden="true" id="criterion-modal">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header" style="text-align: center">
                                <button type="button" class="close" data-dismiss="modal" 
                                        aria-label="Close" style="max-width: 20px; 
                                        float:right"><span aria-hidden="true">&times;</span></button>
                                <!--<h3 id="modal-title" style="border: none"></h3>-->
                                <font id="modal-title" style="font-size: 25px; font-family: inherit; font-weight: 500; line-height: 1.1; color: inherit;"></font>
                            </div>
                            <div class="modal-body">
                                <!--<div id="dialog-form-criterion" style="display: none; background-color: white">-->
<!--                                <h1>Criterion</h1>-->
                                <!--<form style="max-width: 80%; background-color: transparent">-->                        
                                <div style="width: 80%; float: left">
                                    <label style="margin: 20px 0; padding:5px; width: 15%">Title</label>
                                    <input id="formCriterionTitle" type="text" style="border: 1px solid;">
                                    <input id="formCriterionId" type="text" hidden>
                                    <input id="formCriterionType" type="text" hidden>
                                </div>
                                <div style="width: 20%; float: right">
                                    <label style="margin: 20px 0; padding:5px;">Max point</label>
                                    <input id="formCriterionMaxPoint" type="text" style="border: 1px solid; max-width: 40px;" maxlength="3">
                                </div>
                                <div style="width: 80%; margin: 20px 0;">
                                    <label style="margin: 20px 0; padding:5px; width: 15%;vertical-align: top">Description</label>
                                    <textarea id="formCriterionDescription" rows="7" style="border: 1px solid; resize: none"></textarea>
                                </div>

                                <div id="form-test" hidden></div>
                                <!--</div>-->
                            </div>
                            <div class="modal-footer">
                                <div style="width: 100%; text-align: center">
                                    <input id="criterionSaveBtn" type="submit" class="btn btn-primary" value="Save">
                                           <!--data-dismiss="modal" aria-label="Close">-->
                                    <input type="reset" class="btn btn-default" value="Reset">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <script type="text/javascript">
        function tab(tab) {
            $('.tab-content-pdetail').css("display", "none");
            $('.tab-pdetail').removeClass('active');
            document.getElementById(tab).style.display = 'block';
            document.getElementById('li_' + tab).setAttribute("class", "tab-pdetail active");
        }
    </script>
    <%@include file="firstFoot.jsp" %>