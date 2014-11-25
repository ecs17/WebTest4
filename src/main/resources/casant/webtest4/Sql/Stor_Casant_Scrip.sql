create database store;

use store;
-- Usuario --



create table tipo_usuario(

	id integer not null primary key unique auto_increment,
	nombre varchar(30) not null,
	description varchar(50)

	)ENGINE=INNODB;

create table estado_usuario(

	id integer not null primary key unique auto_increment,
	estado varchar(30) not null,
	descripcion varchar(50)

	)ENGINE=INNODB;

create table usuario(

	id integer not null primary key unique auto_increment,
	nombre varchar(30) not null,
	apellidos varchar(50) not null,
	nombre_usuario varchar(20) not null,
	contraseña varchar(32) not null,
	fecha_alta datetime not null,
	estado integer not null,
	tipo_usuario integer not null,

	index fk_usuario_tipo_usuario_idx (tipo_usuario),
	index fk_usuario_estado_idx (estado),

	constraint fk_usuario_tipo_usuario foreign key (tipo_usuario)
		references tipo_usuario (id) on update cascade on delete restrict,

	constraint fk_estado_usuario foreign key (estado)
		references estado_usuario (id) on update cascade on delete restrict

	)ENGINE=INNODB;
	
-- Productos y Operaciones --

create table tipo_existencia(

	id integer not null primary key unique auto_increment,
	avreviatura varchar(30) not null,
	descripcion varchar(50)
	
	)ENGINE=INNODB;

create table estado_producto(
	
	id integer not null primary key unique auto_increment,
	estado varchar(30) not null,
	descripcion varchar(50)

	)ENGINE=INNODB;

create table tipo_producto(

	id integer not null primary key unique auto_increment,
	nombre varchar(30) not null,
	descripcion varchar(50)

	)ENGINE=INNODB;

create table tipo_precentacion(

	id integer not null primary key unique auto_increment,
	nombre varchar(30) not null,
	descripcion varchar(50)

	)ENGINE=INNODB;

create table producto(

	id integer not null primary key unique auto_increment,
	nombre varchar(50) not null,
	descripcion varchar(80) not null,
	clave_desc varchar(50) not null unique,
	codigo_barras integer not null unique,
	marca varchar(30),
	existencia float(3) not null,
	tipo_existencia integer not null,
	tipo_producto integer not null,
	tipo_precentacion integer not null,
	precio integer not null,
	estado_producto integer not null,
        precio_compra float(4) not null,
	precio_venta float(4) not null,
	iva integer not null,
	ieps integer not null,

	index fk_producto_tipo_existencia_idx (tipo_existencia),
	index fk_producto_tipo_producto_idx (tipo_producto),
	index fk_producto_tipo_precentacion_idx (tipo_precentacion),
	index fk_producto_estado_producto_idx (estado_producto),

	constraint fk_producto_tipo_existencia foreign key (tipo_existencia)
		references tipo_existencia (id) on update cascade on delete restrict,

	constraint fk_producto_tipo_producto foreign key (tipo_producto)
		references tipo_producto (id) on update cascade on delete restrict,

	constraint fk_producto_tipo_precentacion foreign key (tipo_precentacion)
		references tipo_precentacion (id) on update cascade on delete restrict,

	constraint fk_producto_estado_producto foreign key (estado_producto)
		references estado_producto (id) on update cascade on delete restrict

	)ENGINE=INNODB;

-- Operacion --

create table tipo_cliente(
	
	id integer not null primary key unique auto_increment,
	avreviatura varchar(30) not null unique,
	descripcion varchar(40)
	
	)ENGINE=INNODB;

create table cliente(

	id integer not null primary key unique auto_increment,
	nombre varchar(40) not null,
	tipo integer not null,
	direccion varchar(50),
	estado_cliente integer not null,
	telefono integer,
	rfc varchar(20),
	correo_electronico varchar(50),

	index  fk_cliente_tipo_cliente_idx (tipo),
	
	constraint fk_cliente_tipo_cliente foreign key (tipo)
		references tipo_cliente (id) on update cascade on delete restrict

	)ENGINE=INNODB;

create table tipo_venta_compra(

	id integer not null primary key unique auto_increment,
	nombre varchar(30) not null unique,
	descripcion varchar(50),
	avreviatura varchar(30) not null unique,
	activo integer not null

	)ENGINE=INNODB;

create table tipo_pago(

	id integer not null primary key unique auto_increment,
	nombre varchar(30) not null unique,
	descripcion varchar(50),
	avreviatura varchar(30) not null unique,
	activo integer not null

	)ENGINE=INNODB;

create table importe(

	id integer not null primary key unique auto_increment,
	subtotal float(3),
	iva float(3),
	ieps float(3),
	total float(3)

	)ENGINE=INNODB;

create table tipo_proveedor(

	id integer not null primary key unique auto_increment,
	abreviatura varchar(20) not null unique,
	descripcion varchar(40) not null

	)ENGINE=INNODB;

create table proveedor(

	id integer not null primary key unique auto_increment,
	nombre varchar(30) not null,
	tipo_proveedor integer not null,
	direccion varchar(50),
	estado_proveedor integer not null,
	telefono integer,
	rfc varchar(20),
	correo_electronico varchar(50),

	index fk_proveedor_tipo_proveedor_idx (tipo_proveedor),

	constraint fk_proveedor_tipo_proveedor foreign key (tipo_proveedor)
		references tipo_proveedor (id) on update cascade on delete restrict

	)ENGINE=INNODB;

create table venta(

	id integer not null primary key unique auto_increment,
	fecha_hora datetime not null,
	cliente integer not null,
	importe integer not null,
	tipo_venta integer not null,
	tipo_pago integer not null,

	index fk_venta_cliente_idx (cliente),
	index fk_vente_importe_idx (importe),
	index fk_venta_tipo_venta_idx (tipo_venta),
	index fk_venta_tipo_pago_idx (tipo_pago),

	constraint fk_venta_cliente foreign key (cliente)
		references cliente (id) on update cascade on delete restrict,
	constraint fk_venta_importe foreign key (id)
		references importe (id) on update cascade on delete restrict,
	constraint fk_venta_tipo_venta foreign key (tipo_venta)
		references tipo_venta_compra (id) on update cascade on delete restrict,
	constraint fk_venta_tipo_pago foreign key (tipo_pago)
		references tipo_pago (id) on update cascade on delete restrict

	)ENGINE=INNODB;

create table compra(

	id integer not null primary key unique auto_increment,
	fecha_hora datetime not null,
	proveedor integer not null,
	importe integer not null,
	tipo_compra integer not null,
	tipo_pago integer not null,

	index fk_compra_proveedor_idx (proveedor),
	index fk_compra_importe_idx (importe),
	index fk_compra_tipo_compra_idx (tipo_compra),
	index fk_compra_tipo_pago_idx (tipo_pago),

	constraint fk_compra_proveedor foreign key (proveedor)
		references proveedor (id) on update cascade on delete restrict,
	constraint fk_compra_importe foreign key (importe)
		references importe (id) on update cascade on delete restrict,
	constraint fk_compra_tipo_compra foreign key (tipo_compra)
		references tipo_venta_compra (id) on update cascade on delete restrict,
	constraint fk_compra_tipo_pago foreign key (tipo_pago)
		references tipo_pago (id) on update cascade on delete restrict

	)ENGINE=INNODB;

create table cuanta_credito(

	id integer not null primary key unique auto_increment,
	venta integer not null unique,
	estado integer not null,

	index fk_cuenta_credito_venta_idx (venta),

	constraint  fk_cuenta_credito_venta foreign key (venta)
		references venta (id) on update cascade on delete restrict

	)ENGINE=INNODB;

create table producto_venta(

	venta integer not null,
	producto integer not null,
	cantidad float(3),
	
	primary key (venta, producto),

	index fk_producto_venta_venta_idx (venta),
	index fk_producto_venta_producto_idx (producto),

	constraint fk_producto_venta_venta foreign key (venta)
		references venta (id) on update cascade on delete restrict,
	constraint fk_producto_venta_producto foreign key (producto)
		references producto (id) on update cascade on delete restrict

	)ENGINE=INNODB;

create table producto_compra(

	compra integer not null,
	producto integer not null,
	cantidad float(3) not null,

	primary key (compra, producto),

	index fk_producto_compra_compra_idx (compra),
	index fk_producto_compra_producto_idx (producto),

	constraint fk_producto_compra_compra foreign key (compra)
		references compra (id) on update cascade on delete restrict,
	constraint fk_producto_compra_producto foreign key (producto)
		references producto (id) on update cascade on delete restrict

	)ENGINE=INNODB;