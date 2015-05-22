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
                <a id="link" onclick="popup('popUpDiv')">Click to Open</a>
                <!-- html file -->

                <div id="popUpDiv" style="display: none; background-color: white">

                    <div style="width: 100%">
                        <div>
                            <h1 style="text-align: center; font-size: 40px;">Employee Detail
                                <a onclick="popup('popUpDiv')" style="float: right"><img src="img/closeButton.PNG"></a>
                            </h1>

                        </div>

                        <form style="max-width: inherit">
                            <div style="text-align:center; font-size: 24px;">
                                <label><font color="black">Name: Beca</font></label>                        
                            </div>
                            <table class="table-popup">
                                <tr style="background-color: inherit">                       
                                    <td style="width: 15%">
                                        <label><font color="black">Department:</font></label>
                                    </td>
                                    <td style="width: 35%">
                                        <input type="text" id="name" name="date" style="display: none">
                                        <label>Department 1</label>
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
                                        <input type="text" id="name" name="date" style="display: none">
                                        <label>8989898989</label>
                                    </td>
                                </tr>
                                <tr style="background-color: inherit" >
                                    <td style="width: 15%">
                                        <label><font color="black">Email:</font></label>
                                    </td>
                                    <td style="width: 35%">
                                        <input type="text" id="name" name="date" style="display: none">
                                        <label>Beca@gmail.com</label>
                                    </td>
                                </tr>

                            </table>
                            <div class="btn-in-popup" style="margin-top: 50px;;" ><input type="button" class="btn-success" value="Edit Profile" style="font-size: 24px;"/></div>
                            <div class="btn-in-popup" style="display: none;" ><input class="btn btn-lg btn-success" type="Submit" value="Submit" /></div>
                        </form>




                    </div>

                </div>  
            </div>
        </main>
    </div>
    <%@include file="firstFoot.jsp" %>

    <script>
        function toggle(div_id) {
            var el = document.getElementById(div_id);
            if (el.style.backgroundColor === 'transparent') {
                el.style.backgroundColor = '#111';
            }
            else {
                el.style.backgroundColor = 'transparent';
            }
        }
        function togglePopup(div_id) {
            var el = document.getElementById(div_id);
            if (el.style.display === 'none') {
                el.style.display = 'block';
                $('html, body').css({
                    'overflow': 'hidden',
                    'height': '100%'
                });

            }
            else {
                el.style.display = 'none';
                $('html, body').css({
                    'overflow': 'auto',
                    'height': 'auto'
                });
            }
        }
        function blanket_size(popUpDivVar) {
            if (typeof window.innerWidth !== '400px') {
                viewportheight = window.innerHeight;
            } else {
                viewportheight = document.documentElement.clientHeight;
            }
            if ((viewportheight > document.body.parentNode.scrollHeight) && (viewportheight > document.body.parentNode.clientHeight)) {
                blanket_height = viewportheight;
            } else {
                if (document.body.parentNode.clientHeight > document.body.parentNode.scrollHeight) {
                    blanket_height = document.body.parentNode.clientHeight;
                } else {
                    blanket_height = document.body.parentNode.scrollHeight;
                }
            }
            var blanket = document.getElementById('blanket');
            //                blanket.style.height = blanket_height + 'px';
            var popUpDiv = document.getElementById(popUpDivVar);
            //                popUpDiv_height = blanket_height / 2 - 200;//200 is half popup's height
            popUpDiv_height = 100;
            popUpDiv.style.top = popUpDiv_height + 'px';
        }
        function window_pos(popUpDivVar) {
            if (typeof window.innerWidth !== '400px') {
                viewportwidth = window.innerHeight;
            } else {
                viewportwidth = document.documentElement.clientHeight;
            }
            if ((viewportwidth > document.body.parentNode.scrollWidth) && (viewportwidth > document.body.parentNode.clientWidth)) {
                window_width = viewportwidth;
            } else {
                if (document.body.parentNode.clientWidth > document.body.parentNode.scrollWidth) {
                    window_width = document.body.parentNode.clientWidth;
                } else {
                    window_width = document.body.parentNode.scrollWidth;
                }
            }
            var popUpDiv = document.getElementById(popUpDivVar);
            //                window_width = window_width / 2 - 200;//200 is half popup's width
            //                popUpDiv.style.left = window_width + 'px';
            popUpDiv.style.marginLeft = "5%";
            popUpDiv.style.width = "85%";
        }
        function popup(windowname) {
            blanket_size(windowname);
            window_pos(windowname);
            toggle('blanket');
            togglePopup(windowname);
        }
    </script>


