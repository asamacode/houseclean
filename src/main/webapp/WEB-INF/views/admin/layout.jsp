<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title><tiles:getAsString name="title" /></title>
        <link rel="stylesheet" href="<c:url value='/static/css/admin.styles.css'/>" rel="stylesheet">
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
        <script src="<c:url value='/static/js/jquery-3.3.1.min.js' /> "></script>
        <script src="<c:url value='/static/js/bootstrap.min.js' />"></script>
        <script type="text/javascript" src="http://js.nicedit.com/nicEdit-latest.js"></script>
        <script src="<c:url value='/static/js/house.admin.js' />"></script>
    </head>
    <body>
       <!-- Header -->
       <tiles:insertAttribute name="header" />
       <!-- END Header -->
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <!-- Menu -->
                <tiles:insertAttribute name="menu" />
                <!-- END Menu -->
            </div>
            <div id="layoutSidenav_content">
                <!-- Body -->
                <tiles:insertAttribute name="body" />
                <!-- END Body -->
                
                <!-- Footer -->
                <tiles:insertAttribute name="footer" />
                <!-- END Footer -->
            </div>
        </div>
    </body>
    <script src="<c:url value='/static/js/admin.scripts.js' />"></script>
</html>
