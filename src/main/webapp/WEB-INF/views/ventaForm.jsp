<%-- 
    Document   : ventas
    Created on : 22/10/2014, 11:51:44 AM
    Author     : emp.emmanuel.castro
--%>
<%@include file="/WEB-INF/views/include.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><fmt:message key="title"/></title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"/>
        <link href="${pageContext.request.contextPath}/static/css/sb-admin.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/static/css/plugins/morris.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/static/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div id="wrapper">
            <h1>Hola</h1>
        </div>
        
    <!-- jQuery Version 1.11.0 -->
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="${pageContext.request.contextPath}/static/js/plugins/morris/raphael.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/plugins/morris/morris.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/plugins/morris/morris-data.js"></script>
    
    <script src="${pageContext.request.contextPath}/static/js/plugins/flot/jquery.flot.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/plugins/flot/jquery.flot.pie.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/plugins/flot/flot-data.js"></script>
    </body>
</html>
