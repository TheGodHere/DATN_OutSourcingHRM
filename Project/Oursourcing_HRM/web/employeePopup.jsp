<div style="width: 100%">
    <div>
        <h1 style="text-align: center; font-size: 40px;">Employee Detail
            <!--<a onclick="popup('popUpDiv')" style="float: right"><img src="img/closeButton.PNG"></a>-->
        </h1>

    </div>

    <form class="form-popup" style="max-width: inherit">
        <div style="text-align:center; font-size: 24px;">
            <label><font color="black">Name: Beca</font></label>                        
        </div>
        <table class="table-popup">
            <tr style="background-color: inherit">                       
                <td style="width: 15%">
                    <label><font color="black">Department:</font></label>
                </td>
                <td style="width: 35%">
                    <input type="text" id="name" class="profileTextbox" name="date" style="display: none">
                    <label class="profileInfo">Department 1</label>
                </td>
                <td style="width: 15%">
                    <label><font color="black">Role:</font></label>
                </td>
                <td style="width: 35%">
                    <input type="text" id="name" name="date" style="display: none">
                    <label>Developer</label>
                </td>
            </tr>
            <tr style="background-color: inherit">                       
                <td style="width: 15%">
                    <label><font color="black">Sex:</font></label>
                </td>
                <td style="width: 75%">
                    <input type="text" id="name" name="date" style="display: none">
                    <label>Female</label>
                </td>
                <td style="width: 15%">
                    <label><font color="black">Skill:</font></label>
                </td>
                <td style="width: 75%">
                    <input type="text" id="name" name="date" style="display: none">
                    <label>Java, C#</label>                                
                </td>
            </tr>
            <tr style="background-color: inherit">                       
                <td style="width: 15%">
                    <label><font color="black">Birthday:</font></label>
                </td>
                <td style="width: 35%">
                    <input type="text" id="name" name="date" style="display: none">
                    <label>09/05/1989</label>
                </td>
            </tr>
            <tr style="background-color: inherit" >
                <td style="width: 15%">
                    <label><font color="black">Phone:</font></label>
                </td>
                <td style="width: 35%">
                    <input type="text" id="name" class="profileTextbox" name="date" style="display: none">
                    <label class="profileInfo">8989898989</label>
                </td>
            </tr>
            <tr style="background-color: inherit" >
                <td style="width: 15%">
                    <label><font color="black">Email:</font></label>
                </td>
                <td style="width: 35%">
                    <input type="text" id="nameTest" class="profileTextbox" name="date" style="display: none">
                    <label class="profileInfo">Beca@gmail.com</label>
                </td>
            </tr>

        </table>
        <div class="btn-in-popup" style="margin-top: 25px">
            <input type="button" class="btn-warning editProfile" onclick="changeProfile()" value="Edit Profile" style="font-size: 24px;"/>
        </div>
        <div class="btn-in-popup" style="margin-top: 25px; display: none" ><input class="btn btn-lg btn-success" type="Submit" value="Submit" /></div>
    </form>
</div>
<script>
    $(".editProfile").on("click", function(){
        $(".profileTextbox").style.display = "block";
        $(".profileInfo").style.display = "none";
    });
    
    
</script>