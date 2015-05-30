
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
    var dialog, form,
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

    form = dialog.find("form").on("submit", function(event) {
        event.preventDefault();
//                addUser();
    });

    $(".openPopupProfile").on("click", function() {
        dialog.dialog("open");
        var parameterIdFromLink = $(this).attr("name");
        xmlhttp = new getXmlHttpRequestObject();

        if (xmlhttp) {
            locationP = "dialog-form";
            xmlhttp.open("POST", "employeePopup.jsp", true);
            xmlhttp.onreadystatechange = handleServletPost;
            xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xmlhttp.send("txtname=MHoang");
        }
    });
    
    $(".openPopupEmployee").on("click", function() {
        dialog.dialog("open");
        var parameterIdFromLink = $(this).attr("name");
        xmlhttp = new getXmlHttpRequestObject();

        if (xmlhttp) {
            locationP = "dialog-form";
            xmlhttp.open("POST", "CenterServlet", true);
            xmlhttp.onreadystatechange = handleServletPost;
            xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xmlhttp.send("accountID="+parameterIdFromLink+"&btAction=ViewEmployeeDetail");
        }
    });

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
    

    $(".openPopupAppraisal").on("click", function() {
        dialog.dialog("open");
        var parameterIdFromLink = $(this).attr("name");
        xmlhttp = new getXmlHttpRequestObject();

        if (xmlhttp) {
            locationP = "dialog-form";
            xmlhttp.open("POST", "appraisal.jsp", true);
            xmlhttp.onreadystatechange = handleServletPost;
            xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xmlhttp.send("txtname=MHoang");
        }

    });
});
//    </script>

/*This is for searchAccount.jsp only*/
function changeAccount(row) {
    $(".accountTextbox"+row).css("display", "block");    
    $(".accountInfo"+row).css("display", "none");    
    $("#btn-Editaccount"+row).css("display", "none");
    $("#btn-Submitaccount"+row).css("display", "block");
}

function submitAccount(row) {
    $(".accountTextbox"+row).css("display", "none");    
    $(".accountInfo"+row).css("display", "block");    
    $("#btn-Editaccount"+row).css("display", "block");
    $("#btn-Submitaccount"+row).css("display", "none");
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


/*------------------------------------------------------------------------------
 Kien
 **/

function ChangeToEditForm(labCri, ediCri, labDes, ediDes, labSco, ediSco, btnEdi, btnSav, btnCan, btnDel) {
    var labCrit = document.getElementById(labCri);
    var ediCrit = document.getElementById(ediCri);
    var labDesc = document.getElementById(labDes);
    var ediDesc = document.getElementById(ediDes);
    var labScor = document.getElementById(labSco);
    var ediScor = document.getElementById(ediSco);
    var btnEdit = document.getElementById(btnEdi);
    var btnSave = document.getElementById(btnSav);
    var btnCanc = document.getElementById(btnCan);
    var btnDele = document.getElementById(btnDel);

    {
        labCrit.setAttribute("hidden", "true");
        labDesc.setAttribute("hidden", "true");
        labScor.setAttribute("hidden", "true");
        btnEdit.setAttribute("hidden", "true");
        btnDele.setAttribute("hidden", "true");

        document.getElementById(ediCri).removeAttribute("hidden");
        document.getElementById(ediDes).removeAttribute("hidden");
        document.getElementById(ediSco).removeAttribute("hidden");
        document.getElementById(btnSav).removeAttribute("hidden");
        document.getElementById(btnCan).removeAttribute("hidden");
    }
}

function ChangeToLabelForm(labCri, ediCri, labDes, ediDes, labSco, ediSco, btnEdi, btnSav, btnCan, btnDel) {
    var labCrit = document.getElementById(labCri);
    var ediCrit = document.getElementById(ediCri);
    var labDesc = document.getElementById(labDes);
    var ediDesc = document.getElementById(ediDes);
    var labScor = document.getElementById(labSco);
    var ediScor = document.getElementById(ediSco);
    var btnEdit = document.getElementById(btnEdi);
    var btnSave = document.getElementById(btnSav);
    var btnCanc = document.getElementById(btnCan);
    var btnDele = document.getElementById(btnDel);

    {
        document.getElementById(labCri).removeAttribute("hidden");
        document.getElementById(labDes).removeAttribute("hidden");
        document.getElementById(labSco).removeAttribute("hidden");
        document.getElementById(btnEdi).removeAttribute("hidden");
        document.getElementById(btnDel).removeAttribute("hidden");

        ediCrit.setAttribute("hidden", "true");
        ediDesc.setAttribute("hidden", "true");
        ediScor.setAttribute("hidden", "true");
        btnSave.setAttribute("hidden", "true");
        btnCanc.setAttribute("hidden", "true");
    }
}

var curIndex = 0;

function removeRow(index) {
    var curNode = document.getElementById("ediCri" + index);
    var wantedNode = curNode.parentNode.parentNode;
    var workTable = wantedNode.parentNode;
    workTable.removeChild(wantedNode);
    curNode = workTable.firstChild.nextSibling;
    var i = 0;
    while (curNode) {
        i++;
        curNode.firstChild.innerHTML = i;
        curNode = curNode.nextSibling;
    }
    curIndex--;
}

function addCriterion() {
    var addRow = createRow();
    var rowElement = document.getElementById("workTable");
    rowElement.appendChild(addRow);
}

function createRow() {
    curIndex++;

    var rowOver = document.createElement("tr");

    //#
    var tdOver = document.createElement("td");
    tdOver.innerHTML = curIndex;
    rowOver.appendChild(tdOver);

    //criterion
    tdOver = document.createElement("td");
    var txtCrit = document.createElement("input");
    txtCrit.id = "ediCri" + curIndex;
    txtCrit.setAttribute("type", "text");
    txtCrit.setAttribute("style", "width: 100%; margin-top: 0; margin-bottom: 0");
    tdOver.appendChild(txtCrit);
    rowOver.appendChild(tdOver);

    //description
    tdOver = document.createElement("td");
    var txtDesc = document.createElement("textarea");
    txtDesc.id = "ediDes" + curIndex;
    txtDesc.setAttribute("type", "text");
    txtDesc.setAttribute("rows", "5");
    txtDesc.setAttribute("style", "width: 100%; margin-top: 0; margin-bottom: 0");
    tdOver.appendChild(txtDesc);
    rowOver.appendChild(tdOver);

    //score
    tdOver = document.createElement("td");
    var txtScore = document.createElement("input");
    txtScore.id = "ediSco" + curIndex;
    txtScore.setAttribute("type", "text");
    txtScore.setAttribute("style", "width: 100%; margin-top: 0; margin-bottom: 0");
    tdOver.appendChild(txtScore);
    rowOver.appendChild(tdOver);

    //action
    tdOver = document.createElement("td");
    var btnSave = document.createElement("input");
    btnSave.id = "btnSav" + curIndex;
    btnSave.setAttribute("type", "button");
    btnSave.setAttribute("class", "btn-primary");
    btnSave.setAttribute("value", "Save");
    var btnCancel = document.createElement("input");
    tdOver.appendChild(btnSave);
    btnCancel.id = "btnCan" + curIndex;
    btnCancel.setAttribute("type", "button");
    btnCancel.setAttribute("class", "btn-default");
    btnCancel.setAttribute("value", "Cancel");
    btnCancel.setAttribute("onclick", "removeRow(" + curIndex + ")");
    tdOver.appendChild(btnCancel);
    rowOver.appendChild(tdOver);

    return rowOver;
}

/*
 ------------------------------------------------------------------------------*/