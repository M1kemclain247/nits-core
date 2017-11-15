<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
    <link href="<c:url value="/resources/styles/mytheme.css" />" rel="stylesheet">
    <title>Update Agent</title>
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
        <form:form method="POST" action="/updateAgent" modelAttribute="agent">
                <label for="agentName">Agent Name:</label>
                <form:input class="form-control" id="agentName" path="name" value="${map.agent.name}"/>
            <label for="tempNumbersID">Numbers (Separate with commas,):</label>
            <form:input class="form-control" id="tempNumbersID" path="tempNumbers" value="${map.agent.tempNumbers}"/>
                <label for="agentAddress">Address:</label>
                <form:input class="form-control" id="agentAddress" path="address" value="${map.agent.address}" />

                <label for="agentofficeID">OfficeID:</label>
                <form:input class="form-control" id="agentofficeID" path="officeID" value="${map.agent.officeID}" />

                <label for="agentDeskPin">HelpDeskPin:</label>
                <form:input class="form-control" id="agentDeskPin" path="helpDeskPin" value="${map.agent.helpDeskPin}" />

                <label for="agentEmail">Email:</label>
                <form:input class="form-control" id="agentEmail" path="email" value="${map.agent.email}" />

            <form:hidden path="groupID" value="${map.agent.groupID}" />

              <%--  <label for="dropdownItems">Agent Group:</label>
                <br>
                <form:select path="groupID" id="dropdownItems">
                    <form:options items="${groupList}" selected="${selectedName}" itemValue="id" itemLabel="groupName"/>
                </form:select>
                <form:errors path="group" cssClass="error" />--%>

                <br>
            <button type="submit" class="btn btn-default customButton">Update</button>
            <form:hidden path="id" value="${map.agent.id}" />
        </form:form>
    </div>
</div>
</body>
</html>