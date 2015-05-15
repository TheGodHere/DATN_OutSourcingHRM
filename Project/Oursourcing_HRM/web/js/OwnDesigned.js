function ChangeContentTab(contentTab) {
    var curTab = document.getElementById(contentTab);
    var parTab = curTab.parentNode;
    var indexChild = parTab.firstChild.nextSibling;

    while (indexChild) {
        indexChild.setAttribute("hidden", "true");
        indexChild = indexChild.nextElementSibling;
    }

    document.getElementById(contentTab).removeAttribute("hidden");
}

