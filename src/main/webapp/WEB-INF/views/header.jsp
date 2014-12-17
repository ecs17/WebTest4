<%-- 
    Document   : header
    Created on : 5/11/2014, 11:17:54 AM
    Author     : EMP.EMMANUEL.CASTRO
--%>

<%@include file="/WEB-INF/views/include.jsp"%>

        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"/>
        <!-- MetisMenu CSS -->
        <link href="${pageContext.request.contextPath}/static/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">
        <!-- Timeline CSS -->
        <link href="${pageContext.request.contextPath}/static/css/sb-admin-2.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/static/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet">
        
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="<c:url value="mainForm.htm"/>">Casant Store Punto de Venta</a>
                </div>
                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li>
                                <a href="#" data-toggle="collapse" data-target="#catalogos"><i class="fa fa-bar-chart-o fa-fw"></i>Catalogos<span class="fa arrow"></span></a>
                                <ul id="productos" class="nav nav-second-level collapse">
                                    <li>
                                        <a href="productosForm.htm">Productos</a>
                                    </li>
                                    <li>
                                        <a href="clientesForm.htm">Clientes</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" data-toggle="collapse" data-target="#ventas"><i class="fa fa-bar-chart-o fa-fw"></i>Ventas<span class="fa arrow"></span></a>
                                <ul id="clientes" class="nav nav-second-level collapse">
                                    <li>
                                        <a href="javascript:window.open('{pageContext.request.contextPath}/ventaForm.htm','popup','width=300,height=400');">Iniciar Venta</a>
                                    </li>
                                    <li>
                                        <a href="morris.html">Bajas Cliente</a>
                                    </li>
                                    <li>
                                        <a href="morris.html">Actualizar Cliente</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
        <!-- jQuery Version 1.11.0 -->
        <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.0.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="${pageContext.request.contextPath}/static/js/plugins/metisMenu/metisMenu.min.js"></script>
        <script src="${pageContext.request.contextPath}/static/js/sb-admin-2.js"></script>