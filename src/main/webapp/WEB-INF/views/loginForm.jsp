<%-- 
    Document   : loginForm
    Created on : 15-oct-2014, 21:38:06
    Author     : Emmanuel
--%>

<%@include file="/WEB-INF/views/include.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><fmt:message key="title.loginForm"/></title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"/>
        <link href="${pageContext.request.contextPath}/static/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/static/css/sb-admin-2.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/static/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="panel panel-default">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Inicio Sesion</h3>
                        </div>
                        <div class="panel-body">
                            <c:if test="${not empty error}">
                                <div class="alert alert-danger" role="alert">${error}</div>
                            </c:if>
                            <fieldset>
                                <form:form name="loginForm" action="loginForm.htm" commandName="loginDetails" method="post">
                                    <div class="form-group">
                                        <label class="control-label">UserName</label>
                                    </div>
                                    <div class="form-group">
                                        <form:input path="userName" cssClass="form-control"></form:input>
                                    </div>
                                    <div class="form-group">
                                        <font color="red"><form:errors path="userName"></form:errors></font>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">Password</label>
                                    </div>
                                    <div class="form-group">
                                        <form:input path="password" type="password" cssClass="form-control"></form:input>
                                    </div>
                                    <div class="form-group">
                                        <font color="red"><form:errors path="password"></form:errors></font>
                                    </div>
                                    <input type="submit" value="Login" class="btn btn-lg btn-success"/>
                                </form:form>
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
