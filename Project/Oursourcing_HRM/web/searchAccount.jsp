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
                    <form action="/search" method="get" class="form-search">
                        <input type="text" name="q" value="Search"/>
                        <input type="submit" value="Search"/>
                    </form>
                    <!--</div>-->
                    Department <select style=" width: 15%" onchange="">
                        <optgroup label="Department">
                            <option value="all">All</option>
                            <option value="Department 1">Department 1</option>
                            <option value="Department 2">Department 2</option>
                            <option value="Department 3">Department 3</option>
                            <option value="Department 4">Department 4</option>
                        </optgroup>
                    </select>

                </div>

                <table class="editableTable">  
                    <thead>  
                        <tr>  
                            <th>#</th>                             
                            <th>Name</th>
                            <th>Username</th>
                            <th>Password</th>  
                            <th>Department</th>
                            <th>Status</th>
                            <th></th>
                        </tr>  
                    </thead>  
                    <tbody>

                        <tr>
                            <td>1</td>                            
                            <td><label class="accountInfo1">Beca</label>
                                <input class="accountTextbox1" type="text" name="txtUsername1" value="Beca" style="display: none"/>
                            </td>
                            <td><label class="accountInfo1">Becapitch</label>
                                <input class="accountTextbox1" type="text" name="txtUsername1" value="Becapitch" style="display: none"/>
                            </td>
                            <td><label class="accountInfo1">12345678</label>
                                <input class="accountTextbox1" type="text" name="txtUsername1" value="12345678" style="display: none"/>
                            </td>
                            <td><label class="accountInfo1">Department1</label>
                                <input class="accountTextbox1" type="text" name="txtUsername1" value="Department1" style="display: none"/>
                            </td>
                            <td><label class="accountInfo1">Active</label>
                                <input class="accountTextbox1" type="checkbox" name="chkActive" value="Active" checked="checked" style="display: none"/>
                            </td> 
                            <td>
                                <div>
                                    <div id="btn-Editaccount1">
                                        <input type="button" class="btn btn-sm btn-warning" onclick="changeAccount(1)" value="Edit" />
                                    </div>
                                    <div id="btn-Submitaccount1" style="display: none" >
                                        <input class="btn btn-sm btn-success" onclick="submitAccount(1)" type="Submit" value="Submit"/>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td><label class="accountInfo2">Chole</label>
                                <input class="accountTextbox2" type="text" name="txtUsername1" value="Beca" style="display: none"/>
                            </td>
                            <td><label class="accountInfo2">Cholepitch</label>
                                <input class="accountTextbox2" type="text" name="txtUsername1" value="Becapitch" style="display: none"/>
                            </td>
                            <td><label class="accountInfo2">12345678</label>
                                <input class="accountTextbox2" type="text" name="txtUsername1" value="12345678" style="display: none"/>
                            </td>
                            <td><label class="accountInfo2">Department1</label>
                                <input class="accountTextbox2" type="text" name="txtUsername1" value="Department1" style="display: none"/>
                            </td>
                            <td><label class="accountInfo2">Active</label>
                                <input class="accountTextbox2" type="checkbox" name="chkActive" value="Active" checked="checked" style="display: none"/>
                            </td> 
                            <td>
                                <div>
                                    <div id="btn-Editaccount2">
                                        <input type="button" class="btn btn-sm btn-warning" onclick="changeAccount(2)" value="Edit" />
                                    </div>
                                    <div id="btn-Submitaccount2" style="display: none" >
                                        <input class="btn btn-sm btn-success" onclick="submitAccount(2)" type="Submit" value="Submit"/>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td><label class="accountInfo3">Amy</label>
                                <input class="accountTextbox3" type="text" name="txtUsername1" value="Beca" style="display: none"/>
                            </td>
                            <td><label class="accountInfo3">Amypitch</label>
                                <input class="accountTextbox3" type="text" name="txtUsername1" value="Becapitch" style="display: none"/>
                            </td>
                            <td><label class="accountInfo3">12345678</label>
                                <input class="accountTextbox3" type="text" name="txtUsername1" value="12345678" style="display: none"/>
                            </td>
                            <td><label class="accountInfo3">Department1</label>
                                <input class="accountTextbox3" type="text" name="txtUsername1" value="Department1" style="display: none"/>
                            </td>
                            <td><label class="accountInfo3">Active</label>
                                <input class="accountTextbox3" type="checkbox" name="chkActive" value="Active" checked="checked" style="display: none"/>
                            </td> 
                            <td>
                                <div>
                                    <div id="btn-Editaccount3">
                                        <input type="button" class="btn btn-sm btn-warning" onclick="changeAccount(3)" value="Edit" />
                                    </div>
                                    <div id="btn-Submitaccount3" style="display: none" >
                                        <input class="btn btn-sm btn-success" onclick="submitAccount(3)" type="Submit" value="Submit"/>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </main>
    </div>
    <script>
        $(".editAccount").on("click", function() {
            $(".profileTextbox").style.display = "block";
        });
    </script>

    <%@include file="firstFoot.jsp" %>