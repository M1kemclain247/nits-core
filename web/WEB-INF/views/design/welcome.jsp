<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en" class="no-js">
<head>
    <meta charset="utf-8"/>
    <title>Welcome</title>
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
</head>
<script>
    function scrollTo(hash) {
        location.hash = "#" + hash;
    }

</script>
<!-- BODY -->
<body id="body" data-spy="scroll" data-target=".header" onLoad="scrollTo('viewing')">

<jsp:include page="header_nav.jsp"/>
<jsp:include page="carousel.jsp"/>

<!--========== PAGE LAYOUT ==========-->
<!-- About -->
<div id="about">
    <div id="viewing" class="content-lg container">

        <h1>Login Successful</h1>

        <br>
        <br>

        <h3>Welcome ${firstname}</h3>

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

