<%-- 
    Document   : demoDetails
    Created on : May 21, 2015, 3:16:14 PM
    Author     : Jenny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/Demo.css" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>        
        <div>
            <!-- html file -->
            <div id="blanket" style="display:none;">

            </div>
            <div id="popUpDiv" style="display:none;">

                <!--<div style="width: 100%">-->
                <h1 style="text-align: center">Employee Detail Screen</h1>  
                <form>
                    <div style="text-align:center">
                        <label><font color="black">Name:</font></label>
                        <input type="text" id="name" name="date">
                    </div>
                    <table style="padding: auto;margin: 0 auto;width: 700px;">
                        <tr>                       
                            <td style="width: 15%">
                                <label><font color="black">Department:</font></label>
                            </td>
                            <td style="width: 35%">
                                <input type="text" id="name" name="date">
                            </td>
                            <td style="width: 15%">
                                <label><font color="black">Role:</font></label>
                            </td>
                            <td style="width: 35%">
                                <input type="text" id="name" name="date">
                            </td>
                        </tr>
                        <tr>                       
                            <td style="width: 15%">
                                <label><font color="black">Sex:</font></label>
                            </td>
                            <td style="width: 75%">
                                <input type="text" id="name" name="date">
                            </td>
                            <td style="width: 15%">
                                <label><font color="black">Skill:</font></label>
                            </td>
                            <td style="width: 75%">
                                <input type="text" id="name" name="date">
                            </td>
                        </tr>
                        <tr>                       
                            <td style="width: 15%">
                                <label><font color="black">Birthday:</font></label>
                            </td>
                            <td style="width: 35%">
                                <input type="text" id="name" name="date">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 15%">
                                <label><font color="black">Phone:</font></label>
                            </td>
                            <td style="width: 35%">
                                <input type="text" id="name" name="date">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 15%">
                                <label><font color="black">Email:</font></label>
                            </td>
                            <td style="width: 35%">
                                <input type="text" id="name" name="date">
                            </td>
                        </tr>

                    </table>
                    <div style="margin-left:650px" ><input type="button" class="btn-success" value="Edit Profile"/></div>
                    <div style="margin-left:650px" ><input class="btn btn-lg btn-success" type="Submit" value="Submit" /></div>
                </form>
                <!--</div>-->

                <a href="#" onclick="popup('popUpDiv')" >Click to Close</a>
            </div>
            <a id="link" onclick="popup('popUpDiv')">Click to Open</a>
        </div>        

        <script>
            function toggle(div_id) {
                var el = document.getElementById(div_id);
                if (el.style.display === 'none') {
                    el.style.display = 'block';
                }
                else {
                    el.style.display = 'none';
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
                blanket.style.height = blanket_height + 'px';
                var popUpDiv = document.getElementById(popUpDivVar);
                popUpDiv_height = blanket_height / 2 - 200;//200 is half popup's height
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
                window_width = window_width / 2 - 200;//200 is half popup's width
                popUpDiv.style.left = window_width + 'px';
            }
            function popup(windowname) {
                blanket_size(windowname);
                window_pos(windowname);
                toggle('blanket');
                toggle(windowname);
            }
        </script>

    </body>
</html>
