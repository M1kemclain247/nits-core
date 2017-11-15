<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <link href="<c:url value="/resources/styles/mytheme.css" />" rel="stylesheet">
    <title>Being Java Guys | Spring DI Hello World</title>
    <style>
        body {
            font-size: 20px;
            color: teal;
            font-family: Calibri, serif;
        }

        td {
            font-size: 15px;
            color: black;
            width: 100px;
            height: 22px;
            text-align: left;
        }

        .heading {
            font-size: 18px;
            color: white;
            font: bold;
            background-color: orange;
            border: thick;
        }
    </style>
</head>
<body>
<div class="bgimg-1">
    <jsp:include page="headers/navigation_header_one.jsp" />

    <jsp:include page="headers/page_title.jsp" >
        <jsp:param name="myVar" value="${title}"/>
    </jsp:include>


        <div class="customForm">

            <form:form method="post" action="insertJob" modelAttribute="job">
                <div class="form-group">
                    <label for="jobName">Job Name:</label>
                    <form:input class="form-control" id="jobName" path="name" />
                </div>
                <div class="form-group">
                    <label for="jobDate">Date:</label>
                    <form:input class="form-control" id="jobDate" path="date" />
                </div>
                <div class="form-group">
                    <label for="jobDescription">Description:</label>
                    <form:input class="form-control" id="jobDescription" path="description" />
                </div>
                <div class="form-group">
                    <label for="jobPriority">Priority:</label>
                    <form:input class="form-control" id="jobPriority" path="priority" />
                </div>
                <div class="form-group">
                    <label for="jobDetails">Details:</label>
                    <form:input class="form-control" id="jobDetails" path="details" />
                </div>
                <button type="submit" class="btn btn-default customButton">Add New</button>
            </form:form>
        </div


</div>

</body>
</html>

