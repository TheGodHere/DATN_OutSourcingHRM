

function ChangeContentTab(contentTab) {
    var curTab = document.getElementById(contentTab);
    var parTab = curTab.parentNode;
    var listChild = parTab.childNodes;
    alert(listChild.length);
    for (var i = 0; i < listChild.length; i++) {
        listChild[i].setAttribute("hidden", "true");
    }
    curTab.removeAttribute("hidden", "false");
}

