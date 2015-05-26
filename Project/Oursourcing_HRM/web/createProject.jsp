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
            <h1 style="text-align: center">Create Project</h1>
            <div id="tabs">
                <div>
                    <ul>
                        <li id="info"><a>Info</a></li>                    
                    </ul>  
                    <div id="Content_Area" style="height: auto; background-color: buttonface;">
                        <div id="info">
                            <table style="width: 100%" class="tablecreate" >
                                <tr style="background-color: inherit" >
                                    <td style="width: 15%;">
                                        <label><font color="black">Project Name</font></label>
                                    </td>
                                    <td style="width: 35%;">
                                        <input type="text" class="form-control" name="name" data-fv-field="name">                                                                   
                                        <i class="form-control-feedback" data-fv-icon-for="name" style="display: none;"></i>
                                        <small class="help-block" data-fv-validator="notEmpty" data-fv-for="name" data-fv-result="NOT_VALIDATED" style="display: none;margin:5px 0;width: 200px" >Project Name is required</small>
                                    </td>
                                    <td style="width: 15%;">
                                        <label><font color="black">Customer Name</font></label>                                    
                                    </td>
                                    <td style="width: 35%;">
                                        <input type="text" class="form-control" name="name" data-fv-field="name">
                                        <i class="form-control-feedback" data-fv-icon-for="name" style="display: none;"></i>
                                        <small class="help-block" data-fv-validator="notEmpty" data-fv-for="name" data-fv-result="NOT_VALIDATED" style="display: none;margin:5px 0;width: 200px" >Customer Name is required</small>
                                    </td>
                                </tr>
                                <tr style="background-color: inherit">
                                    <td style="width: 25%;">
                                        <label><font color="black">End Date</font></label>
                                    </td>
                                    <td style="width: 25%;">
                                        <input type="text" class="form-control" name="name" data-fv-field="name">                                                                   
                                        <i class="form-control-feedback" data-fv-icon-for="name" style="display: none;"></i>
                                        <small class="help-block" data-fv-validator="notEmpty" data-fv-for="name" data-fv-result="NOT_VALIDATED" style="display: none;margin:5px 0;width: 200px" >Project Name is required</small>
                                    </td>
                                    <td style="width: 25%;">
                                        <label><font color="black">Customer Email</font></label>                                    
                                    </td>
                                    <td style="width: 25%;">
                                        <input type="text" class="form-control" name="name" data-fv-field="name">
                                        <i class="form-control-feedback" data-fv-icon-for="name" style="display: none;"></i>
                                        <small class="help-block" data-fv-validator="notEmpty" data-fv-for="name" data-fv-result="NOT_VALIDATED" style="display: none;margin:5px 0;width: 200px" >Customer Name is required</small>
                                    </td>
                                </tr>                    
                                <tr style="background-color: inherit">
                                    <td style="width: 25%;">
                                        <label><font color="black">Start Date</font></label>
                                    </td>
                                    <td style="width: 25%;">
                                        <input type="text" class="form-control" name="name" data-fv-field="name">                                                                   
                                        <i class="form-control-feedback" data-fv-icon-for="name" style="display: none;"></i>
                                        <small class="help-block" data-fv-validator="notEmpty" data-fv-for="name" data-fv-result="NOT_VALIDATED" style="display: none;margin:5px 0;width: 200px" >Project Name is required</small>
                                    </td>
                                    <td style="width: 25%;">
                                        <label><font color="black">Customer Phone</font></label>                                    
                                    </td>
                                    <td style="width: 25%;">
                                        <input type="text" class="form-control" name="name" data-fv-field="name">
                                        <i class="form-control-feedback" data-fv-icon-for="name" style="display: none;"></i>
                                        <small class="help-block" data-fv-validator="notEmpty" data-fv-for="name" data-fv-result="NOT_VALIDATED" style="display: none;margin:5px 0;width: 200px" >Customer Name is required</small>
                                    </td>
                                </tr>
                                <tr style="background-color: inherit">
                                    <td style="width: 25%;">
                                        <label><font color="black">Scale</font> </label>                                    
                                    </td>
                                    <td style="width: 25%;">
                                        <input type="text" class="form-control" name="name" data-fv-field="name">
                                        <i class="form-control-feedback" data-fv-icon-for="name" style="display: none;"></i>
                                        <small class="help-block" data-fv-validator="notEmpty" data-fv-for="name" data-fv-result="NOT_VALIDATED" style="display: none;margin:5px 0;width: 200px" >Customer Name is required</small>
                                    </td>
                                </tr>
                            </table>
                        </div> 
                    </div>
                </div>
                <div style="margin-top: 15px">
                    <ul>
                        <li id="position"><a>Position</a></li>                    
                    </ul>  
                    <div id="Content_Area" style="height: auto; background-color: buttonface;">
                        <div id="position">
                            <table class="tablecreate">
                                <tr style="background-color: inherit">
                                    <td style="width: 25%;">
                                        <label><font color="black">Manager</font></label>
                                    </td>
                                    <td style="width: 25%;">
                                        <input type="text" class="form-control" name="name" data-fv-field="name">                                                                   
                                        <i class="form-control-feedback" data-fv-icon-for="name" style="display: none;"></i>
                                        <small class="help-block" data-fv-validator="notEmpty" data-fv-for="name" data-fv-result="NOT_VALIDATED" style="display: none;margin:5px 0;width: 200px" >Project Name is required</small>
                                    </td>
                                    <td style="width: 25%;">
                                        <label><font color="black">Designer</font></label>                                    
                                    </td>
                                    <td style="width: 25%;">
                                        <input type="text" class="form-control" name="name" data-fv-field="name">
                                        <i class="form-control-feedback" data-fv-icon-for="name" style="display: none;"></i>
                                        <small class="help-block" data-fv-validator="notEmpty" data-fv-for="name" data-fv-result="NOT_VALIDATED" style="display: none;margin:5px 0;width: 200px" >Customer Name is required</small>
                                    </td>
                                </tr>      
                                <tr style="background-color: inherit">
                                    <td style="width: 25%;">
                                        <label><font color="black">Developer</font></label>
                                    </td>
                                    <td style="width: 25%;">
                                        <input type="text" class="form-control" name="name" data-fv-field="name">                                                                   
                                        <i class="form-control-feedback" data-fv-icon-for="name" style="display: none;"></i>
                                        <small class="help-block" data-fv-validator="notEmpty" data-fv-for="name" data-fv-result="NOT_VALIDATED" style="display: none;margin:5px 0;width: 200px" >Project Name is required</small>
                                    </td>
                                    <td style="width: 25%;">
                                        <label><font color="black">Tester</font></label>                                    
                                    </td>
                                    <td style="width: 25%;">
                                        <input type="text" class="form-control" name="name" data-fv-field="name">
                                        <i class="form-control-feedback" data-fv-icon-for="name" style="display: none;"></i>
                                        <small class="help-block" data-fv-validator="notEmpty" data-fv-for="name" data-fv-result="NOT_VALIDATED" style="display: none;margin:5px 0;width: 200px" >Customer Name is required</small>
                                    </td>
                                </tr>      
                            </table>
                        </div>
                    </div>
                </div>

                <div style="margin-top: 15px">
                    <ul>
                    <li id="skill"><a>Skill</a></li>                    
                </ul>  
                <div id="Content_Area" style="height: auto; background-color: buttonface;">
                    <div id="skill" class="col-xs-6">
                        <table style="width: 100%">
                            <tr style="background-color: inherit">
                                <td style="width: 25%;">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="languages[]" value="net" data-fv-field="languages[]"><font color="black">. nET</font>
                                        </label>
                                    </div>
                                </td>
                                <td style="width: 25%;">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="languages[]" value="net" data-fv-field="languages[]"><font color="black">. nET</font>
                                        </label>
                                    </div>
                                </td>
                                <td style="width: 25%;">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="languages[]" value="net" data-fv-field="languages[]"><font color="black">. nET</font>
                                        </label>
                                    </div>
                                </td>
                                <td style="width: 25%;">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="languages[]" value="net" data-fv-field="languages[]"><font color="black">. nET</font>
                                        </label>
                                    </div>
                                </td>
                            </tr>
                            <tr style="background-color: inherit">
                                <td style="width: 25%;">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="languages[]" value="net" data-fv-field="languages[]"><font color="black">. nET</font>
                                        </label>
                                    </div>
                                </td>
                                <td style="width: 25%;">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="languages[]" value="net" data-fv-field="languages[]"><font color="black">. nET</font>
                                        </label>
                                    </div>
                                </td>
                                <td style="width: 25%;">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="languages[]" value="net" data-fv-field="languages[]"><font color="black">. nET</font>
                                        </label>
                                    </div>
                                </td>
                                <td style="width: 25%;">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="languages[]" value="net" data-fv-field="languages[]"><font color="black">. nET</font>
                                        </label>
                                    </div>
                                </td>
                            </tr>
                            
                        </table>

                    </div>
                </div>
                

                </div>
                <button type="button" class="btn btn-primary" style="width: auto; margin-top: 30px;float: right">Submit</button>


        </main>
    </div>
</div>
<%@include file="firstFoot.jsp" %>
