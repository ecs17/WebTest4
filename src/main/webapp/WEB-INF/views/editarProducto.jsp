<%-- 
    Document   : editarProducto
    Created on : 5/11/2014, 02:10:10 PM
    Author     : EMP.EMMANUEL.CASTRO
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
        <link href="${pageContext.request.contextPath}/static/css/productosForm.css" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"/>
        <link href="${pageContext.request.contextPath}/static/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/static/css/sb-admin-2.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/static/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet">
    </head>
    <body>
        <div id="wrapper">
            <%@include file='header.jsp'%>
            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header"><fmt:message key="title.productos.editar"/></h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Detalle del Producto
                            </div>
                            <div class="panel-body">
                                <form:form action="${pageContext.request.contextPath}/producto/edit/${producto.id}.htm" commandName="pProducto" method="POST"
                                           modelAttribute="producto">
                                    <div class="form-group">
                                        <table>
                                            <tr>
                                                <td class="col-lg-4">
                                                    <label id="lblCodeBar"><fmt:message key="title.table.productos.codigobarra"/></label>
                                                </td>
                                                <td class="col-lg-8">
                                                    <form:input id="outCodeBar" path="codigo_barras" type="test" class="form-control" disabled="true"/>
                                                </td>
                                            </tr>	
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="col-lg-4">
                                                    <label id="lblCodeProd"><fmt:message key="title.table.productos.codigo.producto"/></label>
                                                </td>
                                                <td class="col-lg-8">
                                                    <form:input id="outCodeProd" path="clave_desc" type="test" required="true" class="form-control"/>
                                                </td>
                                            </tr>	
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="col-lg-4">
                                                    <label id="lblNomProd"><fmt:message key="title.table.productos.nombre.producto"/></label>
                                                </td>
                                                <td class="col-lg-8">
                                                    <form:input id="outNomProd" path="nombre" type="test" required="true" class="form-control"/>
                                                </td>
                                            </tr>	
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="col-lg-4">
                                                    <label id="lblDescProd"><fmt:message key="title.table.productos.desc.producto"/></label>
                                                </td>
                                                <td class="col-lg-8">
                                                    <form:input id="outDescProd" path="descripcion" type="test" required="true" class="form-control"/>
                                                </td>
                                            </tr>	
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="col-lg-4">
                                                    <label id="lblMarcaProd"><fmt:message key="title.table.productos.marca.producto"/></label>
                                                </td>
                                                <td class="col-lg-8">
                                                    <form:input id="outMarcaProd" path="marca" type="test" required="true" class="form-control"/>
                                                </td>
                                            </tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="col-lg-4">
                                                    <label id="lblExisProd"><fmt:message key="title.table.productos.existencia.producto"/></label>
                                                </td>
                                                <td class="col-lg-8">
                                                    <form:input id="outMarcaProd" path="existencia" type="test" required="true" class="form-control"/>
                                                </td>
                                            </tr>	
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="col-lg-4">
                                                    <label id="lblPrecioVProd"><fmt:message key="title.table.productos.precio_venta.producto"/></label>
                                                </td>
                                                <td class="col-lg-8">
                                                    <form:input id="outPrecioVProd" path="precio_venta" type="test" required="true" class="form-control"/>
                                                </td>
                                            </tr>	
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="col-lg-4">
                                                    <label id="lblPrecioCProd"><fmt:message key="title.table.productos.precio_compra.producto"/></label>
                                                </td>
                                                <td class="col-lg-8">
                                                    <form:input id="outPrecioCProd" path="precio_compra" type="test" required="true" class="form-control"/>
                                                </td>
                                            </tr>	
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="col-lg-4">
                                                    <label id="lblIvaProd"><fmt:message key="title.table.productos.iva.producto"/></label>
                                                </td>
                                                <td class="col-lg-8">
                                                    <form:input id="outIvaProd" path="iva" type="test" class="form-control"/>
                                                </td>
                                            </tr>	
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="col-lg-4">
                                                    <label id="lblIepsProd"><fmt:message key="title.table.productos.ieps.producto"/></label>
                                                </td>
                                                <td class="col-lg-8">
                                                    <form:input id="outIepsProd" path="ieps" type="test" class="form-control"/>
                                                </td>
                                            </tr>	
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="col-md-4">
                                                    <label id="lblTExisProd"><fmt:message key="title.table.productos.tipoexistencia.producto"/></label>
                                                </td>
                                                <td class="col-md-8">
                                                    <form:select path="tipo_existencia.tipoExistenciaId" class="form-control">
                                                        <form:options items="${tipoExistencia}" itemLabel="abreviatura" itemValue="tipoExistenciaId"/>
                                                    </form:select>
                                                </td>
                                            </tr>	
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="col-md-4">
                                                    <label id="lblTipoProd"><fmt:message key="title.table.productos.tipo.producto"/></label>
                                                </td>
                                                <td class="col-md-8">
                                                    <form:select path="tipo_producto.id" class="form-control">
                                                        <form:options items="${tipoProducto}" itemLabel="nombre" itemValue="id"/>
                                                    </form:select>
                                                </td>
                                            </tr>	
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="col-md-4">
                                                    <label id="lblTipoPreProd"><fmt:message key="title.table.productos.tipopres.producto"/></label>
                                                </td>
                                                <td class="col-md-8">
                                                    <form:select path="tipo_precentacion.id" class="form-control">
                                                        <form:options items="${tipoPrecentacion}" itemLabel="nombre" itemValue="id"/>
                                                    </form:select>
                                                </td>
                                            </tr>	
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="col-md-4">
                                                    <label id="lbEstadoProd"><fmt:message key="title.table.productos.estado.producto"/></label>
                                                </td>
                                                <td class="col-md-8">
                                                    <form:select path="estado_producto.id" class="form-control">
                                                        <form:options items="${estadoProducto}" itemLabel="estado" itemValue="id"/>
                                                    </form:select>
                                                </td>
                                            </tr>
                                        </table>
                                        <div class="col-lg-6">
                                            <div class="panel-body">
                                                <input type="submit" class="btn btn-primary btn-lg" value="Aceptar"/>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="panel-body">
                                                <input id="btnCancelar" class="btn btn-danger btn-lg" value="Cancelar"/>
                                            </div>
                                            <script>
                                                $('#btnCancelar').on('click', function (e) {
                                                    window.open("${pageContext.request.contextPath}/productosForm.htm", "_self");
                                                });
                                            </script>
                                        </div>
                                    </div>
                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
