<%-- 
    Document   : altasProductosForm
    Created on : 23/10/2014, 12:08:43 PM
    Author     : emp.emmanuel.castro
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
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/productosForm.css"/>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"/>
        <!-- MetisMenu CSS -->
        <link href="${pageContext.request.contextPath}/static/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">
        <!-- Timeline CSS -->
        <link href="${pageContext.request.contextPath}/static/css/sb-admin-2.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/static/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/static/css/plugins/dataTables.bootstrap.css" rel="stylesheet">
    </head>
    <body>
        <div id="wrapper">
            <%@include file='header.jsp'%>
            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header"><fmt:message key="title.productos.catalogo"/></h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel panel-default">
                            <div class="panel-heading">
                                Descripcion del producto
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <c:if test="${!empty listProducts}">
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-producto">
                                            <thead class="">
                                                <tr>
                                                    <th><fmt:message key="title.table.productos.codigobarra"/></th>
                                                    <th><fmt:message key="title.table.productos.codigo.producto"/></th>
                                                    <th><fmt:message key="title.table.productos.nombre.producto"/></th>
                                                    <th><fmt:message key="title.table.productos.desc.producto"/></th>
                                                    <th><fmt:message key="title.table.productos.precio_venta.producto"/></th>
                                                    <th><fmt:message key="title.table.productos.existencia.producto"/></th>
                                                    <th>Acciones</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${listProducts}" var="producto">
                                                    <tr class="odd gradeX">
                                                        <td>${producto.codigo_barras}</td>
                                                        <td>${producto.clave_desc}</td>
                                                        <td>${producto.nombre}</td>
                                                        <td>${producto.descripcion}</td>
                                                        <td>${producto.precio_venta}</td>
                                                        <td>${producto.existencia}</td>
                                                        <td>
                                                            <button type="button" class="btn btn-primary btn-circle" onclick="location.href='${pageContext.request.contextPath}/editProducto/${producto.id}.htm'">
                                                                <i class="glyphicon glyphicon-floppy-open"></i>
                                                            </button>
                                                            <button type="button" class="btn btn-danger btn-circle" onclick="location.href='${pageContext.request.contextPath}/deletProducto/${producto.id}.htm'">
                                                                <i class="glyphicon glyphicon-remove-circle"></i>
                                                            </button>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                        <!--<script>
                                            $(function () {
                                                $('#btnDelete').confirmOn({
                                                    questionText: '¿Deseas eliminar el producto ' + '${agremiados.nombre}' + '?',
                                                    textYes: 'Si, Estoy seguro',
                                                    textNo: 'No',
                                                    classPrepend: 'myprefix'
                                                }, 'click', function (e, confirmed) {
                                                    if (confirmed) {
                                                        window.open("${pageContext.request.contextPath}/deletProducto/${producto.id}.htm", "_self");
                                                    }
                                                });
                                            });
                                        </script>-->
                                    </c:if>
                                </div>
                                <div class="panel-body">
                                    <input id="btnAddProducto" class="btn btn-primary btn-lg" value="Agregar Nuevo Producto"/>
                                </div>
                                <script>
                                    $('#btnAddProducto').on('click', function (e) {
                                        window.open("addProductoForm.htm", "_self");
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- jQuery Version 1.11.0 -->
        <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.0.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="${pageContext.request.contextPath}/static/js/plugins/metisMenu/metisMenu.min.js"></script>

        <!-- DataTables JavaScript -->
        <script src="${pageContext.request.contextPath}/static/js/plugins/dataTables/jquery.dataTables.js"></script>-->
        <script src="${pageContext.request.contextPath}/static/js/plugins/dataTables/dataTables.bootstrap.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="${pageContext.request.contextPath}/static/js/sb-admin-2.js"></script>
        <script>
        $(document).ready(function() {
            $('#dataTables-producto').dataTable();
        });
        </script>
    </body>
</html>
