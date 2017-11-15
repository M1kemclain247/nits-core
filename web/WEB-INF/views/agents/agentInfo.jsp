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
        <jsp:param name="myVar" value="Agent Information"/>
    </jsp:include>

    <div class="customInfoDiv">
        <div class="container">
            <div class="panel panel-default" style="width: 80%;">
                <div class="panel-heading">
            <p class="bg-primary customInfoTitle" >Name :</p>
                    <p>${agent.name}</p>
            <p class="bg-primary customInfoTitle">Address :</p>
                <p>${agent.address}</p>
            <p class="bg-primary customInfoTitle">Contact Numbers :</p>
                <p>${agent.tempNumbers}</p>
            <p class="bg-primary customInfoTitle">Email :</p>
                <p>${agent.email}</p>
            <p class="bg-primary customInfoTitle">Group :</p>
                <p>${agent.group.groupName}</p>
                </div>
        </div>
        <button type="submit" class="btn btn
            -default customButton" ><a href="/getAgentList/1">Go Back</a></button>
    </div>



</div>
</body>
</html>
