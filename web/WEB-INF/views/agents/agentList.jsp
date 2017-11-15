<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <link href="<c:url value="/resources/styles/mytheme.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/jquery/jquery.1.10.2.min.js" />"></script>
    <script src="<c:url value="/resources/jquery/jquery.autocomplete.min.js" />"></script>
    <title>Agents List Table</title>
    <style>
    </style>
</head>
<body>
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


    <div class="panel panel-default" style="width: 80%;">
        <div class="panel-heading"> <h3>Agents
            List | National IT Services</h3></div>

        <div style="text-align: left" class="panel panel-default">
            <div>
                <style scoped>
                    input[type=text] {
                        width: 130px;
                        box-sizing: border-box;
                        border: 2px solid #ccc;
                        border-radius: 4px;
                        font-size: 16px;
                        background-color: white;
                        background-image: url('../resources/searchicon_medium.png');
                        background-position: 10px 10px;
                        background-repeat: no-repeat;
                        padding: 12px 20px 12px 40px;
                        -webkit-transition: width 0.4s ease-in-out;
                        transition: width 0.4s ease-in-out;
                    }

                    input[type=text]:focus {
                        width: 100%;
                    }
                </style>
            <form:form method="get" commandName="searchTerm" action="/searchAgentList">
                <input type="hidden" name="pageid" value="1"/>
                <input type="text" name="searchTerm" placeholder="Search..." />
            </form:form>



                        <div class="row">
                            <div class="col-sm-3">  <div style="padding: 10px 10px">
                                <a href="/registerAgent">
                                    <button type="button" class="btn btn-primary btn-lg">Register Agent</button>
                                </a>
                            </div></div>
                            <div class="col-sm-3">
                                <div style="padding: 10px 10px">
                                    <a href="/GenerateXml">
                                        <button type="button" class="btn btn-success btn-lg">Download Xml Files</button>
                                    </a>
                                </div>
                            </div>
                        </div>
            </div>




            <center>
            <table border="1">
                <thead>
                <tr>
                    <th class="heading">ID</th>
                    <th width="10%" class="heading">Group</th>
                    <th width="20%" class="heading">Agent Name</th>
                    <th class="heading">Numbers</th>
                    <th width="25%" class="heading">Address</th>
                    <th class="heading">OfficeID</th>
                    <th class="heading">HelpDeskPin</th>
                    <th class="heading">Email</th>
                    <th colspan="2" class="heading">Options</th>
                </tr>
                </thead>
                <c:forEach var="agent" items="${agentList}">
                    <tr>
                        <td>${agent.id}</td>
                        <td>${agent.group.groupName}</td>
                        <td>${agent.name}</td>
                        <td>${agent.tempNumbers}</td>
                        <td>${agent.address}</td>
                        <td>${agent.officeID}</td>
                        <td>${agent.helpDeskPin}</td>
                        <td>${agent.email}</td>
                        <td colspan="2" >
                            <a href="/infoAgent?id=${agent.id}">Info</a>
                            <a href="/editAgent?id=${agent.id}">Edit</a>
                            <a href="/deleteAgent?id=${agent.id}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>


                <c:choose>
                    <c:when test="${pageNos.size() == 0}">
                        <tr>
                            <td class="custom1" colspan="9">
                                <p>No Results found for <b>${searchTerm}</b></p>
                                <br>
                                <a href="/getAgentList/1">Go Back</a>
                            </td>
                        </tr>
                    </c:when>
                    <c:otherwise>
                        <tr><td class="custom1" colspan="9"><ul class="pagination">
                            <c:forEach var="count" items="${pageNos}">
                                <c:choose>
                                    <c:when test="${searchTerm!=null}">
                                        <li><a href="/searchAgentList?pageid=${count}&searchTerm=${searchTerm}">${count}</a></li>
                                    </c:when>
                                    <c:otherwise>
                                        <li><a href="${count}">${count}</a></li>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                            <c:choose>
                                <c:when test="${searchTerm!=null}">
                                    <br>
                                    <br>
                                    <br>
                                    <a href="/getAgentList/1">Go Back</a>
                                </c:when>
                            </c:choose>
                        </ul></td></tr>
                    </c:otherwise>
                </c:choose>

            </table>

            </center>
        </div>
    </div>




</center>

</div>
</div>
<script>
    $(document).ready(function() {

        $('#w-input-search').autocomplete({
            serviceUrl: '${pageContext.request.contextPath}/Agents',
            paramName: "name",
            delimiter: ",",
            transformResult: function(response) {

                return {
                    //must convert json to javascript object before process
                    suggestions: $.map($.parseJSON(response), function(item) {

                        return { value: item.name, data: item.id };
                    })

                };

            }

        });

    });
</script>

</body>
</html>
