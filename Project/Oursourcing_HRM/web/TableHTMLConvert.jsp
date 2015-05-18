<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="result" value="${requestScope.LISTPRO}" />
<c:set var="listHeader" value="${requestScope.LISTHEADER}" />
<c:set var="type" value="${requestScope.TYPE}" />
<table id="example_1" class="table table-striped display">
    <thead>
        <tr>
            <c:if test="${type eq 'projectT1'}" >
                <th>#</th>
                <th>Project</th>
                <th>Manager</th>
                <th>Start date</th>
                <th>Size</th>
                <th>Language</th>
                <th>Customer</th>
            </c:if>
        </tr>
    </thead>
    <tbody>
        <c:if test="${type eq 'projectT1'}" >
            <c:forEach var="project" items="${result}" varStatus="counter">
                <tr>
                    <td>${counter.count}</td>
                    <td>${project.proName}</td>
                    <td>${project.manaName}</td>
                    <td>${project.startDate}</td>
                    <td>${project.size}</td>
                    <td>${project.language}</td>
                    <td>${project.customer}</td>
                </tr>
            </c:forEach>
        </c:if>
    </tbody>
</table>


