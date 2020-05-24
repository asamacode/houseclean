<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <title><tiles:getAsString name="title" /></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


  <link href="https://fonts.googleapis.com/css?family=Oswald:300,400,700|Muli:300,400" rel="stylesheet">
  <link rel="stylesheet" href="<c:url value='/static/fonts/icomoon/style.css'/>">
  <link rel="stylesheet" href="<c:url value='/static/css/bootstrap.min.css' />">
  <link rel="stylesheet" href="<c:url value='/static/css/jquery-ui.css' />">
  <link rel="stylesheet" href="<c:url value='/static/css/owl.carousel.min.css' />">
  <link rel="stylesheet" href="<c:url value='/static/css/owl.theme.default.min.css' />">
  <link rel="stylesheet" href="<c:url value='/static/css/owl.theme.default.min.css' />">

  <link rel="stylesheet" href="<c:url value='/static/css/jquery.fancybox.min.css' />">

  <link rel="stylesheet" href="<c:url value='/static/css/bootstrap-datepicker.css' />">

  <link rel="stylesheet" href="<c:url value='/static/fonts/flaticon/font/flaticon.css' />">

  <link rel="stylesheet" href="<c:url value='/static/css/aos.css' />">
  <link href="<c:url value='/static/css/jquery.mb.YTPlayer.min.css' /> " media="all" rel="stylesheet" type="text/css">

  <link rel="stylesheet" href="<c:url value='/static/css/style.css'/>" rel="stylesheet">

</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

  <div class="site-wrap">
  
    <!-- header -->
    <header>
    	<tiles:insertAttribute name="head" />
    </header>
    <!--END header -->
    
    <!-- Body -->
	<article>
    	<tiles:insertAttribute name="body" />
    </article>
    <!-- END Body -->

    <!-- Footer -->
    <footer>
    	<tiles:insertAttribute name="footer" />
    </footer>
    <!-- END Footer -->

  </div>
  <!-- .site-wrap -->


  <!-- loader -->
  <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#ff5e15"/></svg></div>

  <script src="<c:url value='/static/js/jquery-3.3.1.min.js' /> "></script>
  <script src="<c:url value='/static/js/jquery-migrate-3.0.1.min.js' />"></script>
  <script src="<c:url value='/static/js/jquery-ui.js' />"></script>
  <script src="<c:url value='/static/js/popper.min.js' />"></script>
  <script src="<c:url value='/static/js/bootstrap.min.js' />"></script>
  <script src="<c:url value='/static/js/owl.carousel.min.js' />"></script>
  <script src="<c:url value='/static/js/jquery.stellar.min.js' />"></script>
  <script src="<c:url value='/static/js/jquery.countdown.min.js' />"></script>
  <script src="<c:url value='/static/js/bootstrap-datepicker.min.js' />"></script>
  <script src="<c:url value='/static/js/jquery.easing.1.3.js' />"></script>
  <script src="<c:url value='/static/js/aos.js' />"></script>
  <script src="<c:url value='/static/js/jquery.fancybox.min.js' />"></script>
  <script src="<c:url value='/static/js/jquery.sticky.js' />"></script>
  <script src="<c:url value='/static/js/jquery.mb.YTPlayer.min.js' />"></script>

  <script src="<c:url value='/static/js/main.js' />"></script>

</body>

</html>