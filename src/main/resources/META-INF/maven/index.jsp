<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Citizen Based Monitoring Demo</title>

    <c:set var="url">${pageContext.request.requestURL}</c:set>
    <base href="${fn:substring(url, 0, fn:length(url) - fn:length(pageContext.request.requestURI))}${pageContext.request.contextPath}/" />

    <link href="resources/css/bootstrap-3.0.0.css" rel="stylesheet" media="screen">
    <link href="resources/css/cbm-demo.css" rel="stylesheet" media="screen">
    <link href="resources/css/jquery-ui-1.10.2.css" rel="stylesheet">

    <script type="text/javascript" src="resources/js/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="resources/js/bootstrap-3.0.0.min.js"></script>
    <script type="text/javascript" src="resources/js/jquery-ui-1.9.1.min.js"></script>
    <script type="text/javascript" src="resources/js/d3.v3.min.js"></script>
</head>
<body>

<div class="container">

    <div class="masthead">
        <ul class="nav nav-pills pull-right">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="j_spring_cas_security_logout">Logout</a>
        </ul>
        <h2><img src="resources/img/logo.jpg" style="width:350px"></h2>
    </div>

    <h2>Mobile Data Collection Demo</h2>

    <hr>

    <div class = "row">
        <h3 id = "responses">Number of responses so far: #Error</h3>
        <div class="text-center" id="bar-graph"></div>
    </div>

    <hr>

    <div class="footer">
        <p>&copy; Cell-Life (NPO) - 2013</p>
    </div>

</div>

    <script type="text/javascript">
        $(document).ready(function() {
            $('#bar-graph').load('resources/html/stacked-bar-graph.html');
        });
    </script>

<script>
    $.get(
            "graphsservice/total",
            function(data) {
                $("#responses").html("Number of responses so far: " + Math.round(data/4));
            }
    );
</script>

</body>
</html>
