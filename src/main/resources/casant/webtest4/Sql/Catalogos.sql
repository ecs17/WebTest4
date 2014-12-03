-- Catalogos --

-- Tipo Existencias--
insert into tipo_existencia (avreviatura, descripcion) values('Peso', 'Kilogramos');
insert into tipo_existencia (avreviatura, descripcion) values('Liquido', 'Litros');
insert into tipo_existencia (avreviatura, descripcion) values('Botella Vidrio', 'Envase de Botella de Vidrio');
insert into tipo_existencia (avreviatura, descripcion) values('Botella Plastico', 'Envace Botella de plastico');
insert into tipo_existencia (avreviatura, descripcion) values('Bolsa', 'Bolsa de Plastico Mayor a 250g');
insert into tipo_existencia (avreviatura, descripcion) values('Sobre', 'Sobres de plastico');
insert into tipo_existencia (avreviatura, descripcion) values('Caja', 'Caja');
insert into tipo_existencia (avreviatura, descripcion) values('Granel', 'Producto a Granel');

-- Estado Producto--
insert into estado_producto (estado, descripcion) values('Normal', 'Se encuentra en existencia');
insert into estado_producto (estado, descripcion) values('Agotado', 'Se encuentra Agotado Temporalmente');
insert into estado_producto (estado, descripcion) values('Baja', 'Baja Temporal');

-- -Estado Usuario-
insert into estado_usuario (estado, descripcion) values('Activo', 'Activo y se puede usar');
insert into estado_usuario (estado, descripcion) values('Desactivado', 'Desactivado Temporalmente');
insert into estado_usuario (estado, descripcion) values('Eliminado', 'Eliminado Forma Permanente');

-- Tipo Clinete--
insert into tipo_cliente (avreviatura, descripcion) values('Normal', 'Cliente Normal sin credito');
insert into tipo_cliente (avreviatura, descripcion) values('Normal con Credito', 'Cliente Normal con Crredito');
insert into tipo_cliente (avreviatura, descripcion) values('Restringido', 'Cliente Restringido');

insert into tipo_pago (nombre, descripcion, avreviatura, activo) values('Credito', 'Pago a solicitud de Credito', 'cre', 1);
insert into tipo_pago (nombre, descripcion, avreviatura, activo) values('ContadoEfectivo', 'Pago con efectivo de imediato', 'PEFE', 2);
insert into tipo_pago (nombre, descripcion, avreviatura, activo) values('Tarjeta', 'Pago con tarjeta credito o debito', 'tar', 3);

insert into tipo_precentacion (nombre, descripcion) values('Botella Plastico', 'Envase de botella de plastico');
insert into tipo_precentacion (nombre, descripcion) values('Botella Vidrio', 'Envase de botella de vidrio');
insert into tipo_precentacion (nombre, descripcion) values('Lata Alumnio', 'Envase de lata de aluminio');
insert into tipo_precentacion (nombre, descripcion) values('Sobre Plastico', 'Sobre de plastico');
insert into tipo_precentacion (nombre, descripcion) values('Bolsa Plastico', 'Bolsa de plastico');
insert into tipo_precentacion (nombre, descripcion) values('Envase Carto', 'Envase de carton');
insert into tipo_precentacion (nombre, descripcion) values('Granel', 'A granel');

insert into tipo_producto (nombre, descripcion) values('Detergentes', 'Productos de Higiene Personal y detergentes');
insert into tipo_producto (nombre, descripcion) values('FrutasVerduras', 'Frutas y verduras');
insert into tipo_producto (nombre, descripcion) values('Lacteos', 'Productos lacteas');
insert into tipo_producto (nombre, descripcion) values('CarnesFrias', 'Productos de carne y carnes frias');
insert into tipo_producto (nombre, descripcion) values('Despensa', 'Productos comestibles para el hogar');
insert into tipo_producto (nombre, descripcion) values('Bebidas', 'Productos como refrescos y jugos');
insert into tipo_producto (nombre, descripcion) values('Dulceri', 'roductos de exibidor y dulceria');

insert into tipo_proveedor (abreviatura, descripcion) values('Domicilio', 'Provedores a domicilio');
insert into tipo_proveedor (abreviatura, descripcion) values('Fijos', 'Proveedores en lugares propios');
