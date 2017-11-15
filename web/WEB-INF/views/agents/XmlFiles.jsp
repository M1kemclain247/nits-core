<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <link href="<c:url value="/resources/styles/mytheme.css" />" rel="stylesheet">
    <title>XML Files</title>
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
                .blur-text
                {
                    color: transparent;
                    text-shadow: 0 0 5px #000;
                }
            </style>



            <center>
        <div style="color: #000000;background-color:#f2f2f2;text-align:center;padding:10px 10px;text-align: center; width: 30% ;border-radius: 25px;">
            <h3>Clients XML File Downloads</h3>
        </div>

        <div style="padding: 20px 20px;">



    <table border="1">
        <thead>
        <tr>
            <th width="50" class="heading">File Name</th>
            <th width="30%" class="heading">Path</th>
            <th width="50%" class="heading">Options</th>
        </tr>
        </thead>
        <c:forEach var="item" items="${map}">
            <tr>
                <td width="50%" >${item.key}</td>
                <td width="30%" class="blur-text">${item.value}</td>
                <td width="50%"  ><a href="DownloadXML?path=${item.value.replace("\\","_")}">Download</a>
                </td>
            </tr>
        </c:forEach>
        <tr><td class="custom1" colspan="3"><a href="/getAgentList/1">Go Back</a></td></tr>
    </table>
        </div>

            </center>
</div>
</div>


</body>
</html>
