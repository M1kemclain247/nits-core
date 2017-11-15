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
    <jsp:include page="headers/navigation_header_one.jsp" />

        <jsp:include page="headers/page_title.jsp" >
            <jsp:param name="myVar" value="${title}"/>
        </jsp:include>

        <div class="customForm">
            <form:form method="post" action="updateJob" modelAttribute="job">
                <div class="form-group">
                    <label for="jobName">Job Name:</label>
                    <form:input class="form-control" id="jobName" path="name" value="${map.job.name}"/>
                </div>
                <div class="form-group">
                    <label for="jobDate">Date:</label>
                    <form:input class="form-control" id="jobDate" path="date" value="${map.job.date}" />
                </div>
                <div class="form-group">
                    <label for="jobDescription">Description:</label>
                    <form:input class="form-control" id="jobDescription" path="description" value="${map.job.description}" />
                </div>
                <div class="form-group">
                    <label for="jobPriority">Priority:</label>
                    <form:input class="form-control" id="jobPriority" path="priority" value="${map.job.priority}" />
                </div>
                <div class="form-group">
                    <label for="jobDetails">Details:</label>
                    <form:input class="form-control" id="jobDetails" path="details" value="${map.job.details}" />
                </div>
                <button type="submit" class="btn btn-default customButton">Update</button>
                <form:hidden path="id" value="${map.job.id}" />
            </form:form>
        </div






</body>
</html>