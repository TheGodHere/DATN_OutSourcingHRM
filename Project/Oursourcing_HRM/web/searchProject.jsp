<%@include file="firstHead.jsp" %>

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
            <div style="font-weight: 700; color: #333;">
                <h1 style="text-align: center">Search Project</h1>
                <div >
                    Year 
                    <select style=" width: 15%" onchange="">
                        <optgroup label="Year">
                            <option value="all">All</option>
                            <option value="Department 1">2015</option>
                            <option value="Department 2">2014</option>
                            <option value="Department 3">2013</option>
                            <option value="Department 4">2012</option>
                        </optgroup>
                    </select>

                </div>

                <table id="projectTbl" class="table table-striped display">  
                    <thead>  
                        <tr>  
                            <th>#</th>  
                            <th>Project Name</th>  
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
                            <td>Accounting</td>  
                            <td>Anna</td>  
                            <td>Java</td>  
                            <td>22/06/2015</td>  
                            <td>15</td>  
                            <td>Pitch Inc</td>  
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Accounting</td>  
                            <td>Anna</td>  
                            <td>Java</td>  
                            <td>22/06/2015</td>  
                            <td>15</td>  
                            <td>Pitch Inc</td> 
                        </tr>  
                        <tr>  
                            <td>001</td>  
                            <td>Accounting</td>  
                            <td>Anna</td>  
                            <td>Java</td>  
                            <td>22/06/2015</td>  
                            <td>15</td>  
                            <td>Pitch Inc</td> 
                        </tr>  
                    </tbody>  
                </table>
            </div>
        </main>
    </div>
    <%@include file="firstFoot.jsp" %>