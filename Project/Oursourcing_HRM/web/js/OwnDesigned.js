
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
//        = new getXmlHttpRequestObject(); //xmlhttp holds the ajax object

function servletPost() {
    if (xmlhttp) {
//        var txtname = document.getElementById("txtname");
        xmlhttp.open("POST", "ListAllProject", true);
        xmlhttp.onreadystatechange = handleServletPost;
        xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
        xmlhttp.send("txtname=MHoang");
    }
}

function handleServletPost() {
    if (xmlhttp.readyState === 4) {
        if (xmlhttp.status === 200) {
            var divProject = document.getElementById("project");
            var child = document.getElementById("example_wrapper");
            divProject.removeChild(child);
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

