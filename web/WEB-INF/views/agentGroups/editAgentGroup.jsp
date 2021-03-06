<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
    <link href="<c:url value="/resources/styles/mytheme.css" />" rel="stylesheet">
    <title>Being Java Guys | Spring DI Hello World</title>
    <style>

    </style>
</head>
<body>

<div class="bgimg-1">
    <jsp:include page="../headers/navigation_header_one.jsp" />

    <jsp:include page="../headers/page_title.jsp" >
        <jsp:param name="myVar" value="${title}"/>
    </jsp:include>


    <div class="customForm">
        <form:form method="post" action="updateAgentGroup" modelAttribute="agentGroup">
            <div class="form-group">
                <label for="agentName">Agent Name:</label>
                <form:input class="form-control" id="agentName" path="groupName" value="${map.agentGroup.groupName}"/>
            </div>
            <button type="submit" class="btn btn-default customButton">Update</button>
            <form:hidden path="id" value="${map.agentGroup.id}" />
        </form:form>
    </div>
</div>
</body>
</html>