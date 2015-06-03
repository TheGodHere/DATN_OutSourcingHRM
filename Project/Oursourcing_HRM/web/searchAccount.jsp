<%@include file="firstHead.jsp" %>

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
<c:set var="fullname" value="${sessionScope.FULLNAME}"/>


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
            <div>
                <h1 style="text-align: center">Search Account</h1>

                <div >
                    <!--<div style="width: 60%">-->

                    <form action="CenterServlet" method="get" class="form-search" style="max-width: none;text-align: right;">

                        <input type="submit" name="btAction" value="CreateAccount" />
                        <div>

                            <input type="text" name="txtSearch" value="${param.txtSearch}" style="width: 50%"/>
                            <input type="submit" name="btAction" value="SearchAccount" />
                        </div>
                    </form>
                    <!--</div>-->


                </div>
                <div>
                    <!--<form action="CenterServlet">-->
                    <table class="editableTable">  
                        <thead>  
                            <tr>  
                                <th>#</th>                             
                                <th>Name</th>
                                <th>Username</th>
                                <th>Password</th>                             
                                <th>Status</th>
                                <th></th>
                            </tr>  
                        </thead>  
                        <tbody>
                            <c:forEach items="${fullname}" var="rows" varStatus="counter">


                                <tr>
                            <form>
                                <td>${counter.count}</td>                            
                                <td><label class="accountInfo${counter.count}">${rows.fullName}</label>
                                    <input class="accountTextbox${counter.count}" type="text" name="txtFullname" value="${rows.fullName}" style="display: none"/>
                                    <input type="hidden" name="accountId" value="${rows.accountID}" /> 
                                    <input type="hidden" name="lastSearch" value="${param.txtSearch}" /> 

                                </td>
                                <td><label class="accountInfo${counter.count}">${rows.username}</label>
                                    <input class="accountTextbox${counter.count}" type="text" name="txtUsername" value="${rows.username}" style="display: none"/>
                                </td>
                                <td><label class="accountInfo${counter.count}">${rows.password}</label>
                                    <input class="accountTextbox${counter.count}" type="text" name="txtPassword" value="${rows.password}" style="display: none"/>
                                </td>                            
                                <td><label class="accountInfo${counter.count}">${rows.isActive}</label>
                                    <input class="accountTextbox${counter.count}" type="checkbox" name="chkActive" value="1" <c:if test="${rows.isActive}"> checked="checked"</c:if> style="display: none"/>
                                    </td> 
                                    <td> 
                                        <div>
                                            <div id="btn-Editaccount${counter.count}">
                                            <input type="button" class="btn btn-sm btn-warning" onclick="changeAccount(${counter.count})" value="Edit" />
                                        </div>
                                        <div id="btn-Submitaccount${counter.count}" style="display: none" >
                                            <button class="btn btn-sm btn-success" onclick="submitAccount(${counter.count})" type="Submit" name = "btAction" value="UpdateAccount" style="width: auto">Submit</button>

                                        </div>
                                    </div>
                                </td>
                            </form>
                            </tr>
                            <!--</form>-->

                        </c:forEach>


                        </tbody>
                    </table>
                    <!--</form>-->
                </div>

            </div>
        </main>
    </div>
    <!--    <script>
            $(".editAccount").on("click", function() {
                $(".profileTextbox").style.display = "block";
            });
        </script>-->

    <%@include file="firstFoot.jsp" %>