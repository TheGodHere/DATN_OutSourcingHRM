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
            <h1 style="text-align: center">Create Account</h1>
            <div>
                <form>
                    <table class="tablecreate">
                        <tr>
                            <td>
                                <label><font color="black">Name</font></label>
                            </td>
                            <td>
                                <input type="text" class="form-control" name="name" data-fv-field="name">                                                                   
                                <i class="form-control-feedback" data-fv-icon-for="name" style="display: none;"></i>
                                <small class="help-block" data-fv-validator="notEmpty" data-fv-for="name" data-fv-result="NOT_VALIDATED" ></small>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label><font color="black">Username</font></label>
                            </td>
                            <td>
                                <input type="text" class="form-control" name="name" data-fv-field="name">                                                                   
                                <i class="form-control-feedback" data-fv-icon-for="name" style="display: none;"></i>
                                <small class="help-block" data-fv-validator="notEmpty" data-fv-for="name" data-fv-result="NOT_VALIDATED"></small>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label><font color="black">Password</font></label>
                            </td>
                            <td>
                                <input type="text" class="form-control" name="name" data-fv-field="name">                                                                   
                                <i class="form-control-feedback" data-fv-icon-for="name" style="display: none;"></i>
                                <small class="help-block" data-fv-validator="notEmpty" data-fv-for="name" data-fv-result="NOT_VALIDATED"></small>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label><font color="black">Confirm Password</font></label>
                            </td>
                            <td>
                                <input type="text" class="form-control" name="name" data-fv-field="name">                                                                   
                                <i class="form-control-feedback" data-fv-icon-for="name" style="display: none;"></i>
                                <small class="help-block" data-fv-validator="notEmpty" data-fv-for="name" data-fv-result="NOT_VALIDATED"></small> 
                        </tr>
                        <tr>
                            <td>
                                <label><font color="black">Status</font></label>
                            </td>
                            <td>
                                <input class="accountTextbox3" type="checkbox" name="chkActive" value="Active" checked="checked"/>
                            </td>
                        </tr>
                    </table>
                </form>
                <div>
                    <center><button type="button" class="btn btn-success" style="width: auto">Submit</button></center>
                </div>
                
            </div>
        </main>
    </div>
</div>
<%@include file="firstFoot.jsp" %>
