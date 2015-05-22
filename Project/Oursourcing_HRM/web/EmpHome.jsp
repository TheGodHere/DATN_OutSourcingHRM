<%-- 
    Document   : Homepage
    Created on : May 15, 2015, 12:16:28 PM
    Author     : Le Minh Hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="firstHead.jsp" %>

<%--
================================================================================

--%>
<div class="wrapper row2">
    <div class="rounded">
        <nav id="mainav" class="clear"> 
            <!-- ################################################################################################ -->
            <div style="margin-left: 10%; margin-right: 10%">
                <ul class="clear">
                    <li class="active navbar-home mainpage" onclick="ChangeContentTab('home')"><a href="#">Home</a></li>
                    <li class="navbar-project mainpage" onclick="ChangeContentTab('project')"><a href="#">Project</a></li>
                    <li class="navbar-employee mainpage" onclick="ChangeContentTab('employee')"><a href="#">Employee</a></li>
                    <li class="navbar-knowledge mainpage" onclick="ChangeContentTab('knowledge')"><a href="#">Knowledge</a></li>
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
            <div id="project" hidden="true">
                <h1 style="text-align: center">Working project</h1>
                <table id="example" class="table table-striped display">  
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
                    </tbody>  
                </table>  

                <%--
                <table id="example" class="table table-striped display">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Project</th>
                            <th>Manager</th>
                            <th>Start date</th>
                            <th>Size</th>
                            <th>Language</th>
                            <th>Customer</th>
                        </tr>
                    </thead>
                    <tbody id="projectBody">

                        <c:set var="orderList" value="${requestScope.LISTPRO}" />
                        <c:if test="${not empty orderList}" >
                            <c:forEach var="order" items="${orderList}" varStatus="counter" >

                                <tr>
                                    <td>${counter.count}</td>
                                    <td>${order.proName}</td>
                                    <td>${order.manaName}</td>
                                    <td>${order.startDate}</td>
                                    <td>${order.size}</td>
                                    <td>${order.language}</td>
                                    <td>${order.customer}</td>
                                </tr>
                            </c:forEach>
                        </c:if>
                    </tbody>
                </table>
                --%>
            </div>

            <div id="employee" hidden="true">
                <h1 style="text-align: center">Employee</h1>
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
                    </tbody>  
                </table>  
            </div>
            
                        <div id="knowledge" hidden="true">
                            <h1 style="text-align: center">Project Knowledge</h1>
                            <input type="button" class="btn-success" value="Create new knowledge">
                            <table id="knowTable" class="table table-striped display">  
                                <thead>  
                                    <tr>  
                                        <th>#</th>  
                                        <th>Discussion</th>  
                                        <th>Started by</th>  
                                        <th>Project name</th>  
                                        <th>Replies</th>  
                                        <th>Last post</th>  
                                        <th>?????????</th>
                                    </tr>  
                                </thead>  
                                <tbody>  
                                    <c:forEach begin="1" end="50" step="1" varStatus="counter">
                                        <tr>  
                                            <td>${counter.count}</td>  
                                            <td><a href="#">Anusha</a></td>  
                                            <td>${acc.username}</td>  
                                            <td>OHRM</td>  
                                            <td>7</td>  
                                            <td>18/05/2015</td>  
                                            <td>?????</td>  
                                        </tr>  
                                    </c:forEach>
                                </tbody>  
                            </table>  
                        </div>

                        </main>
                        </div>

                        <%@include file="firstFoot.jsp" %>
