<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<form:form method="post" action="insertAgent" modelAttribute="agent">
    <div class="form-group">
        <label for="agentName">Agent Name:</label>
        <form:input class="form-control" id="agentName" path="name" />
        <form:errors path="name"/>
        <label for="tempNumbers">Numbers (Separate with commas,):</label>
        <form:input class="form-control" id="tempNumbers" path="tempNumbers"/>
        <label for="agentAddress">Address:</label>
        <form:input class="form-control" id="agentAddress" path="address" />
        <label for="agentofficeID">OfficeID:</label>
        <form:input class="form-control" id="agentofficeID" path="officeID" />
        <label for="agentDeskPin">HelpDeskPin:</label>
        <form:input class="form-control" id="agentDeskPin" path="helpDeskPin" />
        <label for="agentEmail">Email:</label>
        <form:input class="form-control" id="agentEmail" path="email" />
        <label for="selector">Choose a Group:</label>
        <br>
        <form:select path="groupID" id="selector">
            <form:option value="0" label="Select an Option" />
            <form:options items="${groupList}" />
        </form:select>
        <form:errors path="groupID" cssClass="error" />
    </div>

    <button type="submit" class="btn btn-default customButton">Add New</button>
</form:form>
</div>
</div>


</body>
</html>

