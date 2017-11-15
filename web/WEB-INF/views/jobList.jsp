<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
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
<jsp:include page="headers/navigation_header_one.jsp" />

    <div>
        <style scoped>
            .aTable {
                width: 800px;
                border-spacing: 2px;
            }
            .aTable tr {
                background-color: #dddddd;
                border: 1px solid black;
            }
            th {
                background-color: #4CAF50;
                color: white;
                border: 1px solid black;
                text-align: left;
                height: 50px;
                vertical-align: bottom;
                padding: 12px;
            }
            td{
                border: 1px solid black;
                text-align: left;
                vertical-align: top;
                padding: 10px;
                font-family: "Times New Roman", serif;
                color: black;
                font-size: 15px;
            }
            h4{
                padding: 15px;
                font-family: "Times New Roman", serif;
                color: black;
                font-size: 30px;
                font-weight: bold;
            }
            tr:hover {background-color: #f5f5f5}
            tr:nth-child(even) {background-color: #f2f2f2}
            tr:nth-child(odd) {background-color: #f2f2f2}
            .center {
                margin: auto;
                width: 50%;
            }
            .custom1{
                padding: 50px;
                text-align: center;

            }
        </style>

<center>
    <div style="color: #000000;background-color:#f2f2f2;text-align:center;padding:10px 10px;text-align: center; width: 30% ;border-radius: 25px;">
        <h3>Job
            List | National IT Services</h3>
    </div>


    <table border="1">
        <thead>
        <tr>
            <th class="heading">ID</th>
            <th class="heading">Job Name</th>
            <th class="heading">Date</th>
            <th class="heading">Description</th>
            <th class="heading">Priority</th>
            <th class="heading">Details</th>
            <th colspan="2" class="heading">Options</th>
        </tr>
        </thead>
        <c:forEach var="job" items="${jobList}">
            <tr>
                <td>${job.id}</td>
                <td>${job.name}</td>
                <td>${job.date}</td>
                <td>${job.description}</td>
                <td>${job.priority}</td>
                <td>${job.details}</td>
                <td colspan="2" ><a href="editJob?id=${job.id}">Edit</a>
                    <a href="deleteJob?id=${job.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        <tr><td class="custom1" colspan="8"><a href="registerJob">Add New Job</a></td></tr>
    </table>

</center>
</div>
</div>
</body>
</html>  