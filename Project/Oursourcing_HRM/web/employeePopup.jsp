<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="accountID" value="${requestScope.EMPLOYEEDETAIL}"/>
<c:set var="isMaster" value="${requestScope.isMaster}" />

<div class="modal-dialog modal-lg">
    <div class="modal-content">
        <form class="form-popup" style="max-width: none">
            <div class="modal-header" style="text-align: center">
                <button type="button" class="close" data-dismiss="modal" 
                        aria-label="Close" style="max-width: 20px; 
                        float:right"><span aria-hidden="true">&times;</span></button>
                <font id="modal-title" style="font-size: 25px; font-family: inherit; font-weight: 500; line-height: 1.1; color: inherit;">Le Minh Hoang</font>
            </div>
            <div class="modal-body">
                <div style="text-align:center; font-size: 24px;">
                    <%--<label><font color="black">Name: ${accountID.fullName} </font></label> --%>                       
                    <label><font color="black">ID: HoangLM2</font></label>                        
                </div>       

                <table class="table-popup" style="table-layout: fixed">
                    <tr style="background-color: inherit; vertical-align: top">
                        <td style="width: 35%">
                            <table class="tableInPopup">  
                                <tr>
                                    <td><label><font color="black">Project:</font></label></td>
                                    <td><label>OHRM, KPMG</label></td>
                                </tr>
                                <tr>
                                    <td><label><font color="black">Role:</font></label></td>
                                    <td><label>Engineer</label></td>
                                </tr>
                                <tr>
                                    <td><label><font color="black">Sex:</font></label></td>
                                    <td><label>Male</label></td>
                                </tr>
                                <%--
                                <tr>
                                    <td><label><font color="black">Sex:</font></label></td>
                                    <td><label>${accountID.sex}</label></td>
                                </tr>
                                <tr>
                                    <td><label><font color="black">Birthday:</font></label></td>
                                    <td><label>${accountID.birthday}</label></td>
                                </tr>
                                <tr>
                                    <td><label><font color="black">Phone:</font></label></td>
                                    <td><input type="text" id="name" class="profileTextbox" name="date" style="display: none">
                                        <label class="profileInfo">${accountID.phone}</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td><label><font color="black">Email:</font></label></td>
                                    <td><input type="text" id="nameTest" class="profileTextbox" name="date" style="display: none">
                                        <label class="profileInfo">${accountID.email}</label></td>
                                </tr>
                                --%>
                            </table>
                        </td>
                        <td style="width: 35%">
                            <table class="tableInPopup">
                                <tr>
                                    <td><label><font color="black">Phone:</font></label></td>
                                    <td><label>0938 512 204</label></td>
                                </tr>
                                <tr>
                                    <td><label><font color="black">Email:</font></label></td>
                                    <td><label>hoanglm2@fsoft.com.vn</label></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top"><label><font color="black">Skill:</font></label></td>
                                    <td>
                                        <label class="profileInfo">Java</label><label class="interest">Interest</label>  
                                        <br/>
                                        <label class="profileInfo">C#</label> 
                                        <br/>
                                        <label class="profileInfo">SQL Server</label> <label class="interest">Interest</label>
                                        <br/>
                                        <div class="profileTextbox" style="display: none"><input type="checkbox" name="Java" value="ON" />Java</div>
                                        <div class="profileTextbox" style="display: none"><input type="checkbox" name="Java" value="ON" />C#</div>
                                        <div class="profileTextbox" style="display: none"><input type="checkbox" name="Java" value="ON" />Python</div>
                                        <div class="profileTextbox" style="display: none"><input type="checkbox" name="Java" value="ON" />C++</div>
                                        <div class="profileTextbox" style="display: none"><input type="checkbox" name="Java" value="ON" />Database</div>
                                        <div class="profileTextbox" style="display: none"><input type="checkbox" name="Java" value="ON" />Database</div>
                                        <div class="profileTextbox" style="display: none"><input type="checkbox" name="Java" value="ON" />Database</div>

                                    </td>
                                </tr>

                            </table>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="modal-footer">
                <div style="width: 100%; text-align: center">
                    <c:if test="${isMaster eq true}" >
                        <div id="btn-Editprofile" class="btn-in-popup " style="margin-top: 25px">
                            <input type="button" class="btn-warning editProfile" onclick="changeProfile()" value="Edit Profile" style="font-size: 24px;"/>
                        </div>
                        <div id="btn-Submitprofile" class="btn-in-popup " style="margin-top: 25px; display: none" >
                            <input class="btn btn-lg btn-success" onclick="submitProfile()" type="Submit" value="Submit" style="width: 130px" />
                        </div>
                    </c:if>
                    <c:if test="${isMaster eq false}" >
                        <div id="btn-Editprofile" class="btn-in-popup " style="margin-top: 25px">
                            <button type="button" class="btn btn-success" data-dismiss="modal" style="width:60px">OK</button>
                        </div>
                    </c:if>
                </div>
            </div>
        </form>
    </div>
</div>

<script>
    $(".editProfile").on("click", function() {
        $(".profileTextbox").style.display = "block";
        $(".profileInfo").style.display = "none";
    });


</script>