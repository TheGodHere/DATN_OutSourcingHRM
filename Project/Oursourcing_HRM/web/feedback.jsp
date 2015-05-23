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
            <div>
                <h1>Project Feedback</h1>
                <div style="margin: 20px 0">
                    <label>Project Name:</label>
                    <select class="select" style="width: auto">
                        <option value="">Outsourcing HRM</option>
                        <option value="">Office Task Management</option>
                        <option value="">Travel Diary App</option>
                        <option value="">Wifi Marketing System</option>
                    </select>
                </div>
                <div style="margin: 20px 0">
                    <table class="table">
                        <thead>
                            <tr>
                                <th style="width: 5%; text-align: center">
                                    #
                                </th>
                                <th style="width: 80%; text-align: center">
                                    Criterion
                                </th>
                                <th style="width: 15%; text-align: center">
                                    Point
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
                                        <label>Project's performance</label>
                                    </div>                                
                                    <div>
                                        <fieldset style="margin: 0px 5%">
                                            Shit things are coming to everyone but nobody care
                                            and this description is the most useless one in the world
                                        </fieldset>
                                    </div>
                                </td>
                                <td style="text-align: center">
                                    <input type="text" style="margin: 0; width: 35%" >
                                    <label style="font-size: 17px !important">/10</label>
                                </td>
                            </tr>                        
                            <tr>
                                <td style="text-align: center">
                                    <label>2</label>
                                </td>
                                <td>
                                    <label>Project's budget</label>
                                    <fieldset style="margin: 0px 5%">
                                        Shit things are coming to everyone but nobody care
                                        and this description is the most useless one in the world
                                    </fieldset>
                                </td>
                                <td style="text-align: center">
                                    <input type="text" style="margin: 0; width: 35%" >
                                    <label style="font-size: 17px !important">/10</label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <label>3</label>
                                </td>
                                <td>
                                    <label>Project's something</label>
                                    <fieldset style="margin: 0px 5%">
                                        Shit things are coming to everyone but nobody care
                                        and this description is the most useless one in the world
                                    </fieldset>
                                </td>
                                <td style="text-align: center">
                                    <input type="text" style="margin: 0; width: 35%">
                                    <label style="font-size: 17px !important">/10</label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center; padding-top: 20px">
                                </td>
                                <td style="text-align: right; padding-top: 20px">
                                    <label style="margin: 5px 5%">Average Point:</label>
                                </td>
                                <td style="text-align: center; padding-top: 20px">
                                    <input type="text" style="margin: 0; width: 35%" readonly value="7.8">
                                    <label style="font-size: 17px !important">/10</label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div style="text-align: center; margin: 20px 0">
                    <input type="button" class="btn btn-primary" value="Submit">
                    <input type="button" class="btn btn-default" value="Cancel">
                </div>
            </div>
        </main>
    </div>
    <%@include file="firstFoot.jsp" %>