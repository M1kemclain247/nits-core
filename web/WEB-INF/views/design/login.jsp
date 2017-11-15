<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en" class="no-js">
<head>
    <meta charset="utf-8"/>
    <title>Login</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>

    <!-- GLOBAL MANDATORY STYLES -->
    <link href="<c:url value="/resources/styles/mytheme.css" />" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css">
    <link href="/resources/design/vendor/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/design/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    <!-- PAGE LEVEL PLUGIN STYLES -->
    <link href="/resources/design/css/animate.css" rel="stylesheet">
    <link href="/resources/design/vendor/swiper/css/swiper.min.css" rel="stylesheet" type="text/css"/>

    <!-- THEME STYLES -->
    <link href="/resources/design/css/layout.min.css" rel="stylesheet" type="text/css"/>

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico"/>
    <style>
        /* Basics */
        html, body {
            width: 100%;
            height: 100%;
            font-family: "Helvetica Neue", Helvetica, sans-serif;
            color: #444;
            -webkit-font-smoothing: antialiased;
            background: #f0f0f0;
        }
        #containerLogin {
            position: fixed;
            width: 340px;
            height: 320px;
            top: 50%;
            left: 50%;
            margin-top: -140px;
            margin-left: -170px;
            background: #fff;
            border-radius: 3px;
            border: 1px solid #ccc;
            box-shadow: 0 1px 2px rgba(0, 0, 0, .1);

        }
        form {
            margin: 0 auto;
            margin-top: 20px;
        }
        label {
            color: #555;
            display: inline-block;
            margin-left: 18px;
            padding-top: 10px;
            font-size: 14px;
        }
        p a {
            font-size: 11px;
            color: #aaa;
            float: right;
            margin-top: -13px;
            margin-right: 20px;
            -webkit-transition: all .4s ease;
            -moz-transition: all .4s ease;
            transition: all .4s ease;
        }
        p a:hover {
            color: #555;
        }
        input {
            font-family: "Helvetica Neue", Helvetica, sans-serif;
            font-size: 12px;
            outline: none;
        }
        input[type=text],
        input[type=password] {
            color: #777;
            padding-left: 10px;
            margin: 10px;
            margin-top: 12px;
            margin-left: 18px;
            width: 290px;
            height: 35px;
            border: 1px solid #c7d0d2;
            border-radius: 2px;
            box-shadow: inset 0 1.5px 3px rgba(190, 190, 190, .4), 0 0 0 5px #f5f7f8;
            -webkit-transition: all .4s ease;
            -moz-transition: all .4s ease;
            transition: all .4s ease;
        }
        input[type=text]:hover,
        input[type=password]:hover {
            border: 1px solid #b6bfc0;
            box-shadow: inset 0 1.5px 3px rgba(190, 190, 190, .7), 0 0 0 5px #f5f7f8;
        }
        input[type=text]:focus,
        input[type=password]:focus {
            border: 1px solid #a8c9e4;
            box-shadow: inset 0 1.5px 3px rgba(190, 190, 190, .4), 0 0 0 5px #e6f2f9;
        }
        #lower {
            background: #ecf2f5;
            width: 100%;
            height: 90px;
            margin-top: 20px;
            margin-bottom: 5px;
            box-shadow: inset 0 1px 1px #fff;
            border-top: 1px solid #ccc;
            border-bottom: 1px solid #ccc;
            border-bottom-right-radius: 3px;
            border-bottom-left-radius: 3px;
        }
        input[type=checkbox] {
            margin-left: 20px;
            margin-top: 30px;
        }
        .check {
            margin-left: 3px;
            font-size: 11px;
            color: #444;
            text-shadow: 0 1px 0 #fff;
        }
        input[type=submit] {
            float: right;
            margin-right: 20px;
            margin-top: 20px;
            width: 80px;
            height: 30px;
            font-size: 14px;
            font-weight: bold;
            color: #fff;
            background-color: #acd6ef; /*IE fallback*/
            background-image: -webkit-gradient(linear, left top, left bottom, from(#acd6ef), to(#6ec2e8));
            background-image: -moz-linear-gradient(top left 90deg, #acd6ef 0%, #6ec2e8 100%);
            background-image: linear-gradient(top left 90deg, #acd6ef 0%, #6ec2e8 100%);
            border-radius: 30px;
            border: 1px solid #66add6;
            box-shadow: 0 1px 2px rgba(0, 0, 0, .3), inset 0 1px 0 rgba(255, 255, 255, .5);
            cursor: pointer;
        }
        input[type=submit]:hover {
            background-image: -webkit-gradient(linear, left top, left bottom, from(#b6e2ff), to(#6ec2e8));
            background-image: -moz-linear-gradient(top left 90deg, #b6e2ff 0%, #6ec2e8 100%);
            background-image: linear-gradient(top left 90deg, #b6e2ff 0%, #6ec2e8 100%);
        }
        input[type=submit]:active {
            background-image: -webkit-gradient(linear, left top, left bottom, from(#6ec2e8), to(#b6e2ff));
            background-image: -moz-linear-gradient(top left 90deg, #6ec2e8 0%, #b6e2ff 100%);
            background-image: linear-gradient(top left 90deg, #6ec2e8 0%, #b6e2ff 100%);
        }
    </style>

</head>

<!-- BODY -->
<body id="body" data-spy="scroll" data-target=".header">

<jsp:include page="header_nav.jsp"/>
<jsp:include page="carousel.jsp"/>

<!--========== PAGE LAYOUT ==========-->
<!-- About -->
<div id="about">
    <div class="content-lg container">


<div id="containerLogin">
<form:form id="loginForm" modelAttribute="login" action="loginProcess" method="POST">
     <form:label path="username">Username: </form:label>
        <form:input path="username" name="username" id="username" />
    <form:label path="password">Password:</form:label>
    <form:password path="password" name="password" id="password" />
    <c:choose>
        <c:when test="${message!=null}">
            <strong style="color: red; padding: 5px 15px;">${message}</strong>
        </c:when>
    </c:choose>
        <div id="lower">
            <input type="checkbox" id="checkbox"><label class="check" for="checkbox">Keep me logged in</label>
         <form:button type="submit" id="login" name="login">Login</form:button>
        </div><!--/ lower-->
</form:form>
</div><!--/ containerLogin-->
<!-- End Page Content -->
<!-- Back To Top -->
    </div>
</div>

<a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

<!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- CORE PLUGINS -->
<script src="/resources/design/vendor/jquery.min.js" type="text/javascript"></script>
<script src="/resources/design/vendor/jquery-migrate.min.js" type="text/javascript"></script>
<script src="/resources/design/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<!-- PAGE LEVEL PLUGINS -->
<script src="/resources/design/vendor/jquery.easing.js" type="text/javascript"></script>
<script src="/resources/design/vendor/jquery.back-to-top.js" type="text/javascript"></script>
<script src="/resources/design/vendor/jquery.smooth-scroll.js" type="text/javascript"></script>
<script src="/resources/design/vendor/jquery.wow.min.js" type="text/javascript"></script>
<script src="/resources/design/vendor/swiper/js/swiper.jquery.min.js" type="text/javascript"></script>
<script src="/resources/design/vendor/masonry/jquery.masonry.pkgd.min.js" type="text/javascript"></script>
<script src="/resources/design/vendor/masonry/imagesloaded.pkgd.min.js" type="text/javascript"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBsXUGTFS09pLVdsYEE9YrO2y4IAncAO2U"></script>

<!-- PAGE LEVEL SCRIPTS -->
<script src="/resources/design/js/layout.min.js" type="text/javascript"></script>
<script src="/resources/design/js/components/wow.min.js" type="text/javascript"></script>
<script src="/resources/design/js/components/swiper.min.js" type="text/javascript"></script>
<script src="/resources/design/js/components/masonry.min.js" type="text/javascript"></script>
<script src="/resources/design/js/components/google-map.min.js" type="text/javascript"></script>
</body>
</html>

