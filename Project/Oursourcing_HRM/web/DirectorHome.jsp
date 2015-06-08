<%@include file="firstHead.jsp" %>

<c:set var="listAppraisal" value="${requestScope.LIST_APPRAISAL}" />
<c:set var="listFeedback" value="${requestScope.LIST_FEEDBACK}" />

<c:if test="${empty typeQ}">
    <c:set var="typeQ" value="${requestScope.CRIT_TYPE}" />
</c:if>

<script type="text/javascript" src="js/canvasjs.js"></script>
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
            <h2 style="text-align: center">Human resource plan</h2>
            <div class="row" style="margin: 20px 0">
                <div id="chartContainer" style="height: 300px; width: 70%; float: left">
                </div>
                <table style="width: 25%; float: right; border: 1px solid;">
                    <tr style="background: #FFFFFF">
                        <td colspan="2" style="text-align: center"><h4>Resources by skill</h4></td>
                    </tr>
                    <tr  style="background: #FBFBFB">
                        <td style="width: 50%; text-align: center">Time: <label>W1/05</label></td>
                        <td style="text-align: center">Unit: <label>people</label></td>
                    </tr>
                    <tr style="background: #FFFFFF">
                        <td colspan="2" style="width: 50%; padding: 5px 30px">Java: <label>120</label></td>
                    </tr>
                    <tr style="background: #FFFFFF">
                        <td colspan="2" style="width: 50%; padding: 5px 30px">.NET: <label>106</label></td>
                    </tr>
                    <tr style="background: #FFFFFF">
                        <td colspan="2" style="width: 50%; padding: 5px 30px">PHP: <label>64</label></td>
                    </tr>
                    <tr style="background: #FFFFFF">
                        <td colspan="2" style="width: 50%; padding: 5px 30px">Visual Basic: <label>71</label></td>
                    </tr>
                    <tr style="background: #FFFFFF">
                        <td colspan="2" style="width: 50%; padding: 5px 30px">C: <label>81</label></td>
                    </tr>
                    <tr style="background: #FFFFFF">
                        <td colspan="2" style="width: 50%; padding: 5px 30px">C++: <label>75</label></td>
                    </tr>
                    <tr style="background: #FBFBFB">
                        <td colspan="2" style="width: 50%; padding: 5px 30px">Engineer in total: <label>300</label></td>
                    </tr>
                </table>
            </div>
            <div class="row" style="margin: 20px 0">
                <h3 style="text-align: center">Projects planning</h3>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Project name</th>
                            <th>Language</th> 
                            <th>Resource needed</th>                            
                            <th>Duration</th>
                            <th>Customer</th>
                            <th>Status</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Outsourcing HRM</td>
                            <td>Java</td>
                            <td>50</td>
                            <td>6 months</td>
                            <td>Steve Job</td>
                            <td><span class="status-close">Planning</span></td>
                            <td style="width: 60px">
                                <input type="button" class="btn btn-sm btn-success" value="Assign manager">
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </main>
    </div>

    <%-- Script --%>
    <script type="text/javascript">
        function tab(tab) {
            $('.tab-content-pdetail').css("display", "none");
            $('.tab-pdetail').removeClass('active');
            document.getElementById(tab).style.display = 'block';
            document.getElementById('li_' + tab).setAttribute("class", "tab-pdetail active");
        }
    </script>
    <script type="text/javascript">
        window.onload = function() {
            var chart = new CanvasJS.Chart("chartContainer",
                    {
                        title: {
                            text: "Human resource",
                            fontSize: 30
                        },
                        animationEnabled: true,
                        axisX: {
                            gridColor: "Silver",
                            tickColor: "silver",
                            //                                valueFormatString: "MM/DD",
                            tickLength: 5

                        },
                        toolTip: {
                            shared: true
                        },
                        theme: "theme2",
                        axisY: {
                            gridColor: "Silver",
                            tickColor: "silver"
                        },
                        legend: {
                            verticalAlign: "center",
                            horizontalAlign: "right"
                        },
                        data: [
                            {
                                type: "line",
                                showInLegend: true,
                                lineThickness: 2,
                                name: "Available",
                                markerType: "square",
                                color: "#F08080",
                                dataPoints: [
                                    {y: 550, label: "W1/05"},
                                    {y: 550, label: "W2/05"},
                                    {y: 600, label: "W3/05"},
                                    {y: 400, label: "W4/05"},
                                    {y: 700, label: "W1/06"},
                                    {y: 600, label: "W2/06"},
                                    {y: 500, label: "W2/06"},
                                    {y: 567, label: "W3/06"},
                                    {y: 435, label: "W4/06"},
                                    {y: 863, label: "W1/07"},
                                    {y: 237, label: "W2/07"}
                                ]
                            },
                            {
                                type: "line",
                                showInLegend: true,
                                lineThickness: 2,
                                name: "Available",
                                markerType: "square",
                                color: "#20B2AA",
                                dataPoints: [
                                    {y: 650, label: "W1/05"},
                                    {y: 700, label: "W2/05"},
                                    {y: 710, label: "W3/05"},
                                    {y: 658, label: "W4/05"},
                                    {y: 734, label: "W1/06"},
                                    {y: 963, label: "W2/06"},
                                    {y: 847, label: "W2/06"},
                                    {y: 853, label: "W3/06"},
                                    {y: 869, label: "W4/06"},
                                    {y: 943, label: "W1/07"},
                                    {y: 970, label: "W2/07"}
                                ]
                            }
                        ],
                        legend:{
                            cursor: "pointer",
                            itemclick: function(e) {
                                if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
                                    e.dataSeries.visible = false;
                                }
                                else {
                                    e.dataSeries.visible = true;
                                }
                                chart.render();
                            }
                        }
                    });

            chart.render();
        };
    </script>
    <%@include file="firstFoot.jsp" %>