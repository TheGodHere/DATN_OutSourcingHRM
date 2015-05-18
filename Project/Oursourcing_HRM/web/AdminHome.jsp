<%-- 
    Document   : AdminHomepage
    Created on : May 16, 2015, 11:43:47 AM
    Author     : Ezio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="firstHead.jsp" %>
<%--
================================================================================
--%>

<div class="wrapper row2">
    <div class="rounded">
        <nav id="mainav" class="nav-customize"> 
            <!-- ################################################################################################ -->
            <div class="nav-customize" style="margin-left: 10%; margin-right: 10%;">
                <ul class="clear" style="padding-left: 0px; margin-left: 0px">
                    <li class="active" onclick="ChangeContentTab('home')"><a href="#home">Home</a></li>
                    <!--<li onclick="ChangeContentTab('work')"><a href="#work">Work place</a></li>-->
                    <li onclick="ChangeContentTab('employee')"><a href="#employee">Employee account</a></li>        
                    <li onclick="ChangeContentTab('customer')"><a href="#customer">Customer account</a></li>
                    <li onclick="ChangeContentTab('appraisal')"><a href="#appraisal">Appraisal</a></li>
                    <li onclick="ChangeContentTab('feedback')"><a href="#feedback">Feedback</a></li>        
                    <li onclick="ChangeContentTab('knowledge')"><a href="#knowledge">Knowledge</a></li>

                </ul>
            </div>
        </nav>
    </div>
</div>
<%--
================================================================================
--%>
<div class="wrapper row3">
    <div class="rounded">
        <main class="container clear" style="width: 100%"> 
            <div id="home" ><img src="img/Home.png" style="width:100%"></div>
            
            <%--
            <div id="work" hidden="true">
                <h1 style="text-align: center">Working project</h1>

            </div>
            --%>
            <div id="employee" hidden="true">
                <h1 style="text-align: center">Employee accounts</h1>
                <div style="margin-bottom: 10px; margin-top: 10px"><input type="button" class="btn-success" value="Create new account"></div>                
                <table id="empTable" class="table table-striped display">  
                    <thead>  
                        <tr>  
                            <th>#</th>  
                            <th>Project</th>  
                            <th>Manager</th>  
                            <th>Language</th>  
                            <th>Start date</th>  
                            <th>Scale</th>  
                            <th>Customer</th>
                        </tr>  
                    </thead>  
                    <tbody>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                    </tbody>  
                </table>  
            </div>

            <div id="customer" hidden="true">
                <h1 style="text-align: center">Customer</h1>
                <div style="margin-bottom: 10px; margin-top: 10px"><input type="button" class="btn-success" value="Create new account"></div>                
                <table id="cusTable" class="table table-striped display">  
                    <thead>  
                        <tr>  
                            <th>#</th>  
                            <th>Project</th>  
                            <th>Manager</th>  
                            <th>Language</th>  
                            <th>Start date</th>  
                            <th>Scale</th>  
                            <th>Customer</th>
                        </tr>  
                    </thead>  
                    <tbody>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                            <td>Anusha</td>  
                            <td>India</td>  
                            <td>10000</td>  
                        </tr>  
                    </tbody>  
                </table>  
            </div>
            
            <div id="appraisal" hidden="true">
                <h1 style="text-align: center">Employee appraisal criterion</h1>
                <table class="table">
                    <thead>
                        <tr>
                            <td style="width: 5%">
                                #
                            </td>
                            <td style="width: 25%">
                                Criterion
                            </td>
                            <td style="width: 50%">
                                Description
                            </td>
                            <td style="width: 5%">
                                Score
                            </td>
                            <td style="width: 15%">
                                Action
                            </td>
                        </tr>
                    </thead>
                    <tbody id="workTable">
                        <tr>
                            <td>
                                1
                            </td>
                            <td>
                                <label id="labCri1">This is criterion number 1</label>
                                <input id="ediCri1" type="text" value="This is criterion number 1" hidden="true" style="width: 100%; margin-top: 0; margin-bottom: 0">
                            </td>
                            <td>
                                <label id="labDes1">This is description for criterion number 1</label>
                                <textarea id="ediDes1" type="text" hidden="true" rows="5" style="width: 100%">This is description for criterion number 1</textarea>
                            </td>
                            <td>
                                <label id="labSco1">10</label>
                                <input id="ediSco1" type="text" value="10" maxlength="2" hidden="true" style="width: 100%; margin-top: 0; margin-bottom: 0">
                            </td>
                            <td>
                                <input id="btnEdi1" onclick="ChangeToEditForm('labCri1','ediCri1','labDes1','ediDes1','labSco1','ediSco1','btnEdi1','btnSav1','btnCan1','btnDel1')" type="button" class="btn-primary" value="Edit">
                                <input id="btnSav1" type="button" class="btn-primary" value="Save" hidden="true">
                                <input id="btnCan1" onclick="ChangeToLabelForm('labCri1','ediCri1','labDes1','ediDes1','labSco1','ediSco1','btnEdi1','btnSav1','btnCan1','btnDel1')" type="button" class="btn-default" value="Cancel" hidden="true">
                                <input id="btnDel1" type="button" class="btn-danger" value="Delete">
                            </td>
                        </tr>                        
                    </tbody>
                </table>
                <div style="margin-bottom: 10px; margin-top: 10px"><input type="button" class="btn-success" value="Add more criterion" onclick="addCriterion()"></div>
            </div>
            
            <div id="feedback" hidden="true">
                <h1 style="text-align: center">Project feedback criterion</h1>
                <table class="table">
                    <thead>
                        <tr>
                            <td>
                                #
                            </td>
                            <td>
                                Criterion
                            </td>
                            <td>
                                Score
                            </td>
                            <td>
                                Action
                            </td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                1
                            </td>
                            <td>
                                <input type="text" title="This is description for criterion number 1" value="This is criterion number 1" readonly>
                            </td>
                            <td>
                                <input type="text" title="This is the score for this criterion" value="10" maxlength="2" readonly>
                            </td>
                            <td>
                                <input type="button" value="Edit">
                            </td>
                        </tr>                        
                    </tbody>
                </table>
            </div>
            </main>
</div>
            <%@include file="firstFoot.jsp" %>

