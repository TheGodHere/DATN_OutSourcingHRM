<!DOCTYPE HTML>
<html>

    <head>  
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
            }
        </script>
        <script type="text/javascript" src="js/canvasjs.js"></script>
    </head>
    <body>
        <div style="width: 50%">
            <div id="chartContainer" style="height: 300px; width: 100%;">
            </div>
        </div>
    </body>
</html>
