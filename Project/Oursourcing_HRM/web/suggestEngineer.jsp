<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="firstHead.jsp" %>

<c:set var="type" value="${param.btAction}" />

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
            <div>
                <div>
                    <h1 style="text-align: center; font-size: 40px;">Assign Engineer</h1>    
                </div>    
                <form style="float: none; margin: 0 0; padding: 0 0" action="suggestEngineer.jsp">
                    <c:if test="${type eq 'ShowAll'}" >
                        <button type="submit" class="btn btn-info" 
                                style="width: 150px; margin-bottom: 20px"
                                name="btAction" value="Suggest">
                            Suggest engineer
                        </button>
                    </c:if>
                    <c:if test="${empty type || type eq 'Suggest'}">
                        <button type="submit" class="btn btn-info" 
                                style="width: 150px; margin-bottom: 20px"
                                name="btAction" value="ShowAll">
                            Show all engineer
                        </button>    
                    </c:if>
                </form>
                <form style="margin: 0 0; padding: 0 0; max-width: none; color: black">
                    <c:if test="${empty type || type eq 'Suggest'}">
                        <table class="table" id="suggestTable">  
                            <thead>  
                                <tr>  
                                    <th>ID</th> 
                                    <th>Full name</th> 
                                    <th>Status</th>                               
                                    <th>Skill</th>                               
                                    <th>Interest</th>                               
                                    <th>Point</th>  
                                    <th>Assign as</th>
                                    <th>Type</th>
                                    <th>Select</th>
                                </tr>  
                            </thead>  
                            <tbody>
                                <tr>
                                    <td>
                                        <a href="#">HoangLM2</a>
                                    </td>
                                    <td>Le Minh Hoang</td>
                                    <td>Free</td>
                                    <td>
                                        Java <br/>
                                        C# <br/>
                                        SQL Server
                                    </td>
                                    <td>
                                        Java <br/>
                                        SQL server
                                    </td>
                                    <td>8.5</td>
                                    <td>
                                        <select onchange=""> 
                                            <option value="Department 1">Developer</option>
                                            <option value="Department 2">Tester</option>                                                   
                                            <option value="Department 2">SA</option>                                                   
                                            <option value="Department 2">BA</option>                                                   
                                            <option value="Department 2">Supporter</option>                                                   
                                        </select>
                                    </td> 
                                    <td>
                                        <select onchange=""> 
                                            <option value="Department 1">Full-time</option>
                                            <option value="Department 2">Part-time</option>                                                   
                                        </select>
                                    </td>
                                    <td>
                                        <input type="checkbox">
                                    </td> 
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#">PhuocNH</a>
                                    </td>
                                    <td>Nguyen Huu Phuoc</td>
                                    <td>Part-time</td>
                                    <td>
                                        Java <br/>
                                    </td>
                                    <td>
                                        Java <br/>
                                    </td>
                                    <td>7.5</td>
                                    <td>
                                        <select style=" width: 80%" onchange=""> 
                                            <option value="Department 1">Developer</option>
                                            <option value="Department 2">Tester</option>                                                   
                                            <option value="Department 2">SA</option>                                                   
                                            <option value="Department 2">BA</option>                                                   
                                            <option value="Department 2">Supporter</option>                                                   
                                        </select>
                                    </td> 
                                    <td>
                                        <select style=" width: 80%" onchange=""> 
                                            <option value="Department 1">Full-time</option>
                                            <option value="Department 2">Part-time</option>                                                   
                                        </select>
                                    </td>
                                    <td>
                                        <input type="checkbox">
                                    </td> 
                                </tr>
                            </tbody>
                        </table>
                    </c:if>
                    <c:if test="${type eq 'ShowAll'}" >
                        <table class="table" id="suggestTable">  
                            <thead>  
                                <tr>  
                                    <th>ID</th> 
                                    <th>Full name</th> 
                                    <th>Status</th>                               
                                    <th>Skill</th>                               
                                    <th>Interest</th>                               
                                    <th>Point</th>  
                                    <th>Assign as</th>
                                    <th>Type</th>
                                    <th>Select</th>
                                </tr>  
                            </thead>  
                            <tbody>
                                <tr>
                                    <td>
                                        <a href="#">HoangLM2</a>
                                    </td>
                                    <td>Le Minh Hoang</td>
                                    <td>Free</td>
                                    <td>
                                        Java <br/>
                                        C# <br/>
                                        SQL Server
                                    </td>
                                    <td>
                                        Java <br/>
                                        SQL server
                                    </td>
                                    <td>8.5</td>
                                    <td>
                                        <select onchange=""> 
                                            <option value="Department 1">Developer</option>
                                            <option value="Department 2">Tester</option>                                                   
                                            <option value="Department 2">SA</option>                                                   
                                            <option value="Department 2">BA</option>                                                   
                                            <option value="Department 2">Supporter</option>                                                   
                                        </select>
                                    </td> 
                                    <td>
                                        <select onchange=""> 
                                            <option value="Department 1">Full-time</option>
                                            <option value="Department 2">Part-time</option>                                                   
                                        </select>
                                    </td>
                                    <td>
                                        <input type="checkbox">
                                    </td> 
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#">PhuocNH</a>
                                    </td>
                                    <td>Nguyen Huu Phuoc</td>
                                    <td>Part-time</td>
                                    <td>
                                        Java <br/>
                                    </td>
                                    <td>
                                        Java <br/>
                                    </td>
                                    <td>7.5</td>
                                    <td>
                                        <select style=" width: 80%" onchange=""> 
                                            <option value="Department 1">Developer</option>
                                            <option value="Department 2">Tester</option>                                                   
                                            <option value="Department 2">SA</option>                                                   
                                            <option value="Department 2">BA</option>                                                   
                                            <option value="Department 2">Supporter</option>                                                   
                                        </select>
                                    </td> 
                                    <td>
                                        <select style=" width: 80%" onchange=""> 
                                            <option value="Department 1">Full-time</option>
                                            <option value="Department 2">Part-time</option>                                                   
                                        </select>
                                    </td>
                                    <td>
                                        <input type="checkbox">
                                    </td> 
                                </tr>
                                <tr style="background-color: rgb(199, 199, 199)">
                                    <td>
                                        <a href="#">KienNT</a>
                                    </td>
                                    <td>Ngo Trac Kien</td>
                                    <td>Full-time</td>
                                    <td>
                                        Java <br/>
                                    </td>
                                    <td>
                                        Java <br/>
                                    </td>
                                    <td>9.0</td>
                                    <td>
                                        <select style=" width: 80%" onchange=""> 
                                            <option value="Department 1">Developer</option>
                                            <option value="Department 2">Tester</option>                                                   
                                            <option value="Department 2">SA</option>                                                   
                                            <option value="Department 2">BA</option>                                                   
                                            <option value="Department 2">Supporter</option>                                                   
                                        </select>
                                    </td> 
                                    <td>
                                        <select style=" width: 80%" onchange=""> 
                                            <option value="Department 1">Full-time</option>
                                            <option value="Department 2">Part-time</option>                                                   
                                        </select>
                                    </td>
                                    <td>
                                        <input type="checkbox">
                                    </td> 
                                </tr>
                            </tbody>
                        </table>
                    </c:if>
                    <button type="button" class="btn btn-primary" style="width: 150px;float: right;">Assign</button>   
                </form>
            </div>
        </main>
    </div>

    <script>

    </script>

    <%@include file="firstFoot.jsp" %>
