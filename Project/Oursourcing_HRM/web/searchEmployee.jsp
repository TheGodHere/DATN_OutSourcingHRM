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
                <h1 style="text-align: center">Search Employee</h1>
                <div >
                    <!--<div style="width: 60%">-->
                    <form action="/search" method="get" class="form-search">
                        <input type="text" name="q" value="Search"/>
                        <input type="submit" value="Search"/>
                    </form>
                    <!--</div>-->
                    <!--                    Department <select style=" width: 15%" onchange="">
                                            <optgroup label="Department">
                                                <option value="all">All</option>
                                                <option value="Department 1">Department 1</option>
                                                <option value="Department 2">Department 2</option>
                                                <option value="Department 3">Department 3</option>
                                                <option value="Department 4">Department 4</option>
                                            </optgroup>
                                        </select>-->

                </div>

                <table class="table">  
                    <thead>  
                        <tr>  
                            <th>No #</th> 
                            <th>Name</th>
                            <th>Department</th>  
                            <th>Role</th>                               
                            <th>Birthday</th>  
                            <th>Mail</th>  
                            <th>Phone</th>
                        </tr>  
                    </thead>  
                    <tbody>
                        <c:forEach items="${result}" var="acc" varStatus="counter" >
                            <tr>
                                <td>${counter.count}</td>
                                <td><a href="#" class="openPopupProfile" name="beca">${acc.username}</a></td>
                                <td>Department 1</td>
                                <td>Manager</td>
                                <td>09/12/1989</td>
                                <td>Beca@gmail.com</td>
                                <td>9999999999</td>                            
                            </tr>
                        </c:forEach>
                        <!--                       <%-- <tr>
                                                    <td>2</td>
                                                    <td><a href="#" class="openPopupProfile" name="chloe">Chloe</a></td>
                                                    <td>Department 2</td>
                                                    <td>Developer</td>
                                                    <td>08/11/1989</td>
                                                    <td>Chloe@gmail.com</td>
                                                    <td>7777777777</td>                            
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td><a href="#" class="openPopupProfile" name="amy">Amy</a></td>
                                                    <td>Department 3</td>
                                                    <td>Tester</td>
                                                    <td>16/03/1989</td>
                                                    <td>Amy@gmail.com</td>
                                                    <td>3333333333</td>                            
                                                </tr> --%>
                                            </tbody>
                                        </table>
                        
                                    </div>
                                </main>
                            </div>
                        <%@include file="firstFoot.jsp" %>