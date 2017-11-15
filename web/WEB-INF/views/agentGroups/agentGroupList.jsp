<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <link href="<c:url value="/resources/styles/mytheme.css" />" rel="stylesheet">
    <title>Agents Group List Table</title>
    <style>
    </style>
</head>
<body>
<div class="bgimg-1">
    <jsp:include page="../headers/navigation_header_one.jsp" />

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
                <h3>Agents Group
                    List | National IT Services</h3>
            </div>


            <table border="1">
                <thead>
                <tr>
                    <th class="heading">ID</th>
                    <th width="20%" class="heading">Agent Group Name</th>
                    <th colspan="2" class="heading">Options</th>
                </tr>
                </thead>
                <c:forEach var="group" items="${agentsGroupList}">
                    <tr>
                        <td>${group.id}</td>
                        <td>${group.groupName}</td>
                        <td colspan="2" ><a href="editAgentGroup?id=${group.id}">Edit</a>
                            <a href="deleteAgentGroup?id=${group.id}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                <tr><td class="custom1" colspan="8"><a href="registerAgentGroup">Add New Agent Group</a></td></tr>
            </table>

        </center>

    </div>
</div>
</body>
</html>
