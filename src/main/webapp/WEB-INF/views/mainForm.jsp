<%-- 
    Document   : mainForm
    Created on : 20-oct-2014, 20:26:49
    Author     : Emmanuel
--%>
<%@include file="/WEB-INF/views/include.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title><fmt:message key="title"/></title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"/>
        <!-- MetisMenu CSS -->
        <link href="${pageContext.request.contextPath}/static/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">
        <!-- Timeline CSS -->
        <link href="${pageContext.request.contextPath}/static/css/plugins/timeline.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/static/css/sb-admin-2.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/static/css/plugins/morris.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/static/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div id="wrapper">
            <%@include file='header.jsp'%>
            <div id="page-wrapper">

                <div class="container-fluid">

                </div>
            <!-- /.container-fluid -->

            </div>
        </div>
    <!-- jQuery Version 1.11.0 -->
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    
    <!-- Metis Menu Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/static/js/plugins/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="${pageContext.request.contextPath}/static/js/plugins/morris/raphael.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/plugins/morris/morris.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/plugins/morris/morris-data.js"></script>
    
    <!-- Custom Theme JavaScript -->
    <script src="${pageContext.request.contextPath}/static/js/sb-admin-2.js"></script>
    </body>
</html>
