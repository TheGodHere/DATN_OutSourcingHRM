
$(document).ready(function() {
    $(".navbar-main").click(function() {
        $(".navbar-main").removeClass("active");
        $(this).addClass("active");
    });
});

function getXmlHttpRequestObject()
{
    if (window.XMLHttpRequest)
    {
        return new XMLHttpRequest(); //To support the browsers IE7+, Firefox, Chrome, Opera, Safari
    }
    else if (window.ActiveXObject)
    {
        return new ActiveXObject("Microsoft.XMLHTTP"); // For the browsers IE6, IE5 
    }
    else
    {
        alert("Error due to old verion of browser upgrade your browser");
    }
}

var xmlhttp, locationP;

function handleServletPost() {
    if (xmlhttp.readyState === 4) {
        if (xmlhttp.status === 200) {
//            alert("hello");
            var contentPlace = document.getElementById(locationP);
            contentPlace.innerHTML = xmlhttp.responseText;
//            alert("hello");
//            alert(contentPlace.innerHTML);
//            var divProject = document.getElementById("project");
//            var child = document.getElementById("example_wrapper");
//            divProject.removeChild(child);
//
//            var table = $('#example').DataTable();
//            table.destroy();
//
//            var newTable = xmlhttp.responseText;
//            var newDiv = document.createElement("div");
//            newDiv.innerHTML = newTable;
//
//            divProject = document.getElementById("project");
//            divProject.appendChild(newDiv);
//            $(document).ready(function() {
//                $('#example_1').dataTable({
//                    "pagingType": "full_numbers"
//                });
//            });
        }
        else {
            alert("Ajax calling error");
        }
    }
}

function ChangeContentTab(contentTab) {
    var curTab = document.getElementById(contentTab);
    var parTab = curTab.parentNode;
    var indexChild = parTab.firstChild.nextSibling;

    while (indexChild) {
        indexChild.style.display = "none";
        indexChild = indexChild.nextElementSibling;
    }

    document.getElementById(contentTab).style.display = "block";

    xmlhttp = new getXmlHttpRequestObject();
    if (xmlhttp) {
//        var txtname = document.getElementById("txtname");
        xmlhttp.open("POST", "ListAllProject", true);
        xmlhttp.onreadystatechange = handleServletPost;
        xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xmlhttp.send("txtname=MHoang");
    }

}




/*
 *Create Popup
 * 
 *   
 */

//<script>
$(function() {
    var dialog, form, dialog1,
            // From http://www.whatwg.org/specs/web-apps/current-work/multipage/states-of-the-type-attribute.html#e-mail-state-%28type=email%29
            emailRegex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/,
            name = $("#name"),
            email = $("#email"),
            password = $("#password"),
            allFields = $([]).add(name).add(email).add(password),
            tips = $(".validateTips");

//            function updateTips(t) {
//                tips
//                        .text(t)
//                        .addClass("ui-state-highlight");
//                setTimeout(function() {
//                    tips.removeClass("ui-state-highlight", 1500);
//                }, 500);
//            }
//
//            function checkLength(o, n, min, max) {
//                if (o.val().length > max || o.val().length < min) {
//                    o.addClass("ui-state-error");
//                    updateTips("Length of " + n + " must be between " +
//                            min + " and " + max + ".");
//                    return false;
//                } else {
//                    return true;
//                }
//            }
//
//            function checkRegexp(o, regexp, n) {
//                if (!(regexp.test(o.val()))) {
//                    o.addClass("ui-state-error");
//                    updateTips(n);
//                    return false;
//                } else {
//                    return true;
//                }
//            }
//
//            function addUser() {
//                var valid = true;
//                allFields.removeClass("ui-state-error");
//
//                valid = valid && checkLength(name, "username", 3, 16);
//                valid = valid && checkLength(email, "email", 6, 80);
//                valid = valid && checkLength(password, "password", 5, 16);
//
//                valid = valid && checkRegexp(name, /^[a-z]([0-9a-z_\s])+$/i, "Username may consist of a-z, 0-9, underscores, spaces and must begin with a letter.");
//                valid = valid && checkRegexp(email, emailRegex, "eg. ui@jquery.com");
//                valid = valid && checkRegexp(password, /^([0-9a-zA-Z])+$/, "Password field only allow : a-z 0-9");
//
//                if (valid) {
//                    $("#users tbody").append("<tr>" +
//                            "<td>" + name.val() + "</td>" +
//                            "<td>" + email.val() + "</td>" +
//                            "<td>" + password.val() + "</td>" +
//                            "</tr>");
//                    dialog.dialog("close");
//                }
//                return valid;
//            }

    dialog = $("#dialog-form").dialog({
        autoOpen: false,
        height: 300,
        width: 350,
        modal: true,
//                buttons: {
//                    "Create an account": addUser,
//                    Cancel: function() {
//                        dialog.dialog("close");
//                    }
//                },
        close: function() {
            form[ 0 ].reset();
            allFields.removeClass("ui-state-error");
        }
    });

    /*This function is for only EditCriterion.jsp only*/
    dialog1 = $("#dialog-form-criterion").dialog({
        autoOpen: false,
        height: 300,
        width: 350,
        modal: true,
        close: function() {
            form[ 0 ].reset();
            allFields.removeClass("ui-state-error");
        }
    });

    form = dialog.find("form").on("submit", function(event) {
        event.preventDefault();
//                addUser();
    });

    $(".openPopupProfile").on("click", function() {
//        dialog.dialog("open");
        var parameterIdFromLink = $(this).attr("name");
        xmlhttp = new getXmlHttpRequestObject();

        if (xmlhttp) {
            locationP = "employee-profile-modal";
            xmlhttp.open("POST", "employeePopup.jsp", true);

            xmlhttp.onreadystatechange = handleServletPost;
            xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xmlhttp.send("txtname=MHoang");
        }
    });

    $(".openPopupEmployee").on("click", function() {
//        dialog.dialog("open");
        var parameterIdFromLink = $(this).attr("name");
        xmlhttp = new getXmlHttpRequestObject();

        if (xmlhttp) {
//            locationP = "dialog-form";
            locationP = "employee-detail-modal";
            xmlhttp.open("POST", "CenterServlet", true);
            xmlhttp.onreadystatechange = handleServletPost;
            xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xmlhttp.send("accountID=" + parameterIdFromLink + "&btAction=ViewEmployeeDetail");
        }
    });

    /*This code is use for projectDetail function edit position of engineer only*/
    $(".editPosPopup").on("click", function() {
        dialog.dialog("open");
        var parameterIdFromLink = $(this).attr("name");
        xmlhttp = new getXmlHttpRequestObject();

        if (xmlhttp) {
            locationP = "dialog-form";
            xmlhttp.open("POST", "editPositionPopup.jsp", true);
            xmlhttp.onreadystatechange = handleServletPost;
            xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xmlhttp.send("txtname=MHoang");
        }

    });
    /*End code*/

    /*This is for project detail only*/

    $(".assignPopup").on("click", function() {
        dialog.dialog("open");
        var parameterIdFromLink = $(this).attr("name");
        xmlhttp = new getXmlHttpRequestObject();

        if (xmlhttp) {
            locationP = "dialog-form";
            xmlhttp.open("POST", "suggestPopup.jsp", true);
            xmlhttp.onreadystatechange = handleServletPost;
            xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xmlhttp.send("txtname=MHoang");
        }

    });

    $(".openPopupAppraisalResult").on("click", function() {
//        dialog.dialog("open");
        var parameterIdFromLink = $(this).attr("name");
        xmlhttp = new getXmlHttpRequestObject();

        if (xmlhttp) {
            locationP = "appraisal-result-modal";
            xmlhttp.open("POST", "AppraisalResult.jsp", true);
            xmlhttp.onreadystatechange = handleServletPost;
            xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xmlhttp.send("txtname=MHoang");
        }

    });

    $(".openPopupAppraisal").on("click", function() {
//        dialog.dialog("open");
        var parameterIdFromLink = $(this).attr("name");
        xmlhttp = new getXmlHttpRequestObject();

        if (xmlhttp) {
            locationP = "appraisal-modal";
            xmlhttp.open("POST", "appraisal.jsp", true);
            xmlhttp.onreadystatechange = handleServletPost;
            xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xmlhttp.send("txtname=MHoang");
        }

    });

    /*This is for editCriterion.jsp only*/
    /*Add Criterion*/
    $(".addCriterionPopup").on("click", function() {

        var target = document.getElementById("modal-title");
        target.innerHTML = "Add new criterion";

        target = document.getElementById("formCriterionId");
        target.value = "";

        target = document.getElementById("formCriterionTitle");
        target.value = "";

        target = document.getElementById("formCriterionMaxPoint");
        target.value = "";

        target = document.getElementById("formCriterionDescription");
        target.value = "";

        target = document.getElementById("formCriterionType");
//        var targetContent = document.getElementById("curType");
//        target.value = targetContent.value;
        target.value = 3;

        target = document.getElementById("criterionSaveBtn");
        target.setAttribute("name", "0");

    });
    /*Edit Criterion*/
    $(".editCriterionPopup").on("click", function() {
        var nameX = $(this).attr("name");
//        dialog1.dialog("open");

        var target = document.getElementById("modal-title");
        target.innerHTML = "Edit criterion";

        target = document.getElementById("formCriterionId");
        var targetContent = document.getElementById("critId" + nameX);
        target.value = targetContent.innerHTML;

        target = document.getElementById("formCriterionTitle");
        targetContent = document.getElementById("title" + nameX);
        target.value = targetContent.innerHTML;

        target = document.getElementById("formCriterionMaxPoint");
        targetContent = document.getElementById("mPoint" + nameX);
        target.value = targetContent.innerHTML;

        target = document.getElementById("formCriterionDescription");
        targetContent = document.getElementById("desc" + nameX);
        target.value = targetContent.innerHTML;

        target = document.getElementById("formCriterionType");
        targetContent = document.getElementById("type" + nameX);
        target.value = targetContent.innerHTML;

        target = document.getElementById("criterionSaveBtn");
        targetContent = document.getElementById("critId" + nameX);
        target.name = targetContent.innerHTML;

    });
    /*Save button clicked*/
    $("#criterionSaveBtn").on("click", function() {
        var c = confirm("Save this criterion?");
//        alert('dialog');
        if (c === true) {
            var nameX = $(this).attr("name");
            if (nameX === "0") { //create

                var targetContent = document.getElementById("formCriterionTitle");
                var title = targetContent.value;

                targetContent = document.getElementById("formCriterionMaxPoint");
                var maxPoint = targetContent.value;

                targetContent = document.getElementById("formCriterionDescription");
                var description = targetContent.value;

                targetContent = document.getElementById("formCriterionType");
                var type = targetContent.value;

                xmlhttp = new getXmlHttpRequestObject();
                if (xmlhttp) {
                    locationP = "form-test";
//                    xmlhttp.open("POST", "AddCriterion", true);
                    xmlhttp.open("POST", "AddCriterion", false);
                    xmlhttp.onreadystatechange = handleServletPost;
                    xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    xmlhttp.send("txtTitle=" + title + "&txtMaxPoint=" + maxPoint + "&txtDescription=" + description + "&txtType=" + type);
                }

                /* Create row */
                var newId = document.getElementById('form-test').innerHTML;
                if (newId !== 0) {
                    var rowOver = document.createElement("tr");

                    //criterion & critId & type
                    var tdOver = document.createElement("td");

                    var div1 = document.createElement("div");
                    var lblCritId = document.createElement("label");
                    lblCritId.id = "critId" + newId;
                    lblCritId.setAttribute("hidden", true);
                    lblCritId.innerHTML = newId;
                    var lblType = document.createElement("label");
                    lblType.id = "type" + newId;
                    lblType.setAttribute("hidden", true);
                    lblType.innerHTML = type;
                    var lblTitle = document.createElement("label");
                    lblTitle.id = "title" + newId;
                    lblTitle.innerHTML = title;
                    div1.appendChild(lblCritId);
                    div1.appendChild(lblType);
                    div1.appendChild(lblTitle);

                    var div2 = document.createElement("div");
                    var parDesc = document.createElement("p");
                    parDesc.id = "desc" + newId;
                    parDesc.setAttribute("style", "margin: 0px 5%");
                    parDesc.innerHTML = description;
                    div2.appendChild(parDesc);
                    tdOver.appendChild(div1);
                    tdOver.appendChild(div2);
                    rowOver.appendChild(tdOver);

                    //max point
                    tdOver = document.createElement("td");
                    tdOver.setAttribute("style", "text-align: center");
                    var lblMaxPoint = document.createElement("label");
                    lblMaxPoint.id = "mPoint" + newId;
                    lblMaxPoint.setAttribute("style", "font-size: 17px !important");
                    lblMaxPoint.innerHTML = maxPoint;
                    tdOver.appendChild(lblMaxPoint);
                    rowOver.appendChild(tdOver);

                    //action
                    tdOver = document.createElement("td");
                    var btnEdit = document.createElement("input");
                    btnEdit.setAttribute("type", "button");
                    btnEdit.setAttribute("class", "btn btn-sm btn-primary editCriterionPopup");
                    btnEdit.name = newId;
                    btnEdit.setAttribute("value", "Edit");
                    tdOver.appendChild(btnEdit);
                    tdOver.innerHTML = tdOver.innerHTML + " ";
                    var btnDelete = document.createElement("input");
                    btnDelete.setAttribute("type", "button");
                    btnDelete.setAttribute("class", "btn btn-sm btn-danger removeCriterion");
                    btnDelete.name = newId;
                    btnDelete.setAttribute("value", "Delete");
                    tdOver.appendChild(btnDelete);
                    rowOver.appendChild(tdOver);
                    /* End create row*/

                    $('#criterion-modal').modal('hide');

                } else {
                    $('#criterion-modal').modal('hide');
                }

            } else { //edit
                var target = document.getElementById("critId" + nameX);
                var targetContent = document.getElementById("formCriterionId");
                var critId = targetContent.value;
                target.innerHTML = targetContent.value;

                target = document.getElementById("title" + nameX);
                targetContent = document.getElementById("formCriterionTitle");
                var title = targetContent.value;
                target.innerHTML = targetContent.value;

                target = document.getElementById("mPoint" + nameX);
                targetContent = document.getElementById("formCriterionMaxPoint");
                var maxPoint = targetContent.value;
                target.innerHTML = targetContent.value;

                target = document.getElementById("desc" + nameX);
                targetContent = document.getElementById("formCriterionDescription");
                var description = targetContent.value;
                target.innerHTML = targetContent.value;

                target = document.getElementById("type" + nameX);
                targetContent = document.getElementById("formCriterionType");
                var type = targetContent.value;
                target.innerHTML = targetContent.value;

                xmlhttp = new getXmlHttpRequestObject();
                if (xmlhttp) {
//                    xmlhttp.open("POST", "EditCriterion", true);
                    xmlhttp.open("POST", "EditCriterion", false);
                    xmlhttp.onreadystatechange = handleServletPost;
                    xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                    xmlhttp.send("txtCritId=" + critId + "&txtTitle=" + title + "&txtMaxPoint=" + maxPoint + "&txtDescription=" + description + "&txtType=" + type);
                }

                $('#criterion-modal').modal('hide');

            }
        } else {
            // DO NOTHING
        }
//        location.reload();
    });
    /*Deactive  Criterion*/
    $(".removeCriterion").on("click", function() {
        var c = confirm("Remove this criterion?");
        if (c === true) {
            var critId = $(this).attr("name");

            xmlhttp = new getXmlHttpRequestObject();
            if (xmlhttp) {
                locationP = "form-test";
                xmlhttp.open("POST", "DeactiveCriterion", false);
//                xmlhttp.open("POST", "DeactiveCriterion", true);
                xmlhttp.onreadystatechange = handleServletPost;
                xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xmlhttp.send("txtCritId=" + critId);
            }

            $('#criterion-modal').modal('hide');

//            var curId = document.getElementById('form-test').innerHTML;
//            if (curId !== 0) {
//                //removeRow
//                var curNode = document.getElementById("critId" + curId);
//                var wantedNode = curNode.parentNode.parentNode.parentNode;
//                var workTable = wantedNode.parentNode;
//                workTable.removeChild(wantedNode);
//                curNode = workTable.firstChild.nextSibling;
//            } else {
//                //DO NOTHING
//            }
        }
    });

//for timesheet
    $(".updateTimesheet").on("click", function() {
        var nameX = $(this).attr("name");

        var target = document.getElementById("timesheet");
        var targetContent = document.getElementById("timeSheetID" + nameX);
        target.value = targetContent.innerHTML;

        target = document.getElementById("datepicker");
        targetContent = document.getElementById("date" + nameX);
        target.value = targetContent.innerHTML;

        target = document.getElementById("ProCod");
        targetContent = document.getElementById("proCode" + nameX);
        // target.setAttribute("value", targetContent.innerHTML);
        target.innerHTML = targetContent.innerHTML;

        target = document.getElementById("tim");
        targetContent = document.getElementById("time" + nameX);
        target.value = targetContent.innerHTML;

        target = document.getElementById("descrip");
        targetContent = document.getElementById("des" + nameX);
        target.value = targetContent.innerHTML;

//        var btAdd = document.getElementById("add");
//        btAdd.setAttribute("hidden", "true");
//        var btReset = document.getElementById("reset");
//        btReset.setAttribute("hidden", "true");
        $('#add').css("display", "none");
        $('#reset').css("display", "none");
        $('#update').css("display", "block");
//        var btUpdate = document.getElementById("update");
//        btUpdate.  ("display");

        var targetID = document.getElementById("proUpdate" + nameX).innerHTML;
        target = document.getElementById("ProCod" + targetID);
        target.setAttribute("selected", "");

        var title = document.getElementById("title");
        title.innerHTML = "Update Timesheet";

    });

});
//    </script>

/*This is for searchAccount.jsp only*/
function changeAccount(row) {
    $(".accountTextbox" + row).css("display", "block");
    $(".accountInfo" + row).css("display", "none");
    $("#btn-Editaccount" + row).css("display", "none");
    $("#btn-Submitaccount" + row).css("display", "block");
}

function submitAccount(row) {
    $(".accountTextbox" + row).css("display", "none");
    $(".accountInfo" + row).css("display", "block");
    $("#btn-Editaccount" + row).css("display", "block");
    $("#btn-Submitaccount" + row).css("display", "none");
}

/*This is for employeePopup.jsp only*/

function changeProfile() {
    $(".profileTextbox").css("display", "block");
    $(".profileInfo").css("display", "none");
    $("#btn-Editprofile").css("display", "none");
    $("#btn-Submitprofile").css("display", "block");
}

function submitProfile() {
    $(".profileTextbox").css("display", "none");
    $(".profileInfo").css("display", "block");
    $("#btn-Editprofile").css("display", "block");
    $("#btn-Submitprofile").css("display", "none");
}

/*This is for projectDetail.jsp only*/
function changeProject() {
    $(".projectTextbox").css("display", "block");
    $(".projectInfo").css("display", "none");
    $("#btn-Editproject").css("display", "none");
    $("#btn-Submitproject").css("display", "block");
}
/*This is for editCriterion.jsp only*/
//$('#criterionSaveBtn').on("click", function() {
//    alert('hehe');
//});


/*This is for knowledgeDetail.jsp only*/
var commentID = 0;
function editComment(commentName) {
    commentID = commentName;
    var commentContent = document.getElementById("comment" + commentName).innerHTML;
    document.getElementById("newComment").innerHTML = commentContent;
    document.getElementById("newComment").focus();
    $("#stopEdit").css("display", "block");
}

function stopEditComment() {
    document.getElementById("newComment").innerHTML = "";
    $("#stopEdit").css("display", "none");
    document.getElementById("comment" + commentID).focus();
    document.getElementById('formComment').onsubmit = function() {
        return false;
    };
    commentID = 0;
}

/*This is for draw chart*/

window.onload = function() {
    var chart = new CanvasJS.Chart("chartContainer_suggest",
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
                        name: "Supporter",
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