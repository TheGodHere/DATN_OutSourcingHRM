
$(document).ready(function() {
    $(".navbar-project").click(function() {
        $(".mainpage").removeClass("active");
        $(".navbar-project").addClass("active");

    });
    $(".navbar-home").click(function() {
        $(".mainpage").removeClass("active");
        $(".navbar-home").addClass("active");

    });
    $(".navbar-employee").click(function() {
        $(".mainpage").removeClass("active");
        $(".navbar-employee").addClass("active");

    });
    $(".navbar-knowledge").click(function() {
        $(".mainpage").removeClass("active");
        $(".navbar-knowledge").addClass("active");

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

var xmlhttp;

function handleServletPost() {
    if (xmlhttp.readyState === 4) {
        if (xmlhttp.status === 200) {
            var divProject = document.getElementById("project");
            var child = document.getElementById("example_wrapper");
            divProject.removeChild(child);

            var table = $('#example').DataTable();
            table.destroy();

            var newTable = xmlhttp.responseText;
            var newDiv = document.createElement("div");
            newDiv.innerHTML = newTable;

            divProject = document.getElementById("project");
            divProject.appendChild(newDiv);
            $(document).ready(function() {
                $('#example_1').dataTable({
                    "pagingType": "full_numbers"
                });
            });
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
        indexChild.setAttribute("hidden", "true");
        indexChild = indexChild.nextElementSibling;
    }

    document.getElementById(contentTab).removeAttribute("hidden");

    xmlhttp = new getXmlHttpRequestObject();
    if (xmlhttp) {
//        var txtname = document.getElementById("txtname");
        xmlhttp.open("POST", "ListAllProject", true);
        xmlhttp.onreadystatechange = handleServletPost;
        xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xmlhttp.send("txtname=MHoang");
    }

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