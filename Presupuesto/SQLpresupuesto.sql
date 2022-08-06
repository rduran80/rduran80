create database presupuesto

drop database presupuesto

use presupuesto

-- crea la tabla tipo_transaccion
create table tipo_transaccion
(
	id int identity(1,1),
	Descripcion varchar(50) not null,
	tipoContable varchar(10) not null,
	constraint Ck_tipocontable check (tipoContable = 'Activo' or tipoContable = 'Pasivo'), --control valida campo
	constraint pk_idtipotransaccion primary key (id)
)

select * from tipo_transaccion

-- crea la tabla transacion
create table transacion 
(
	id int identity(1,1),
	idTipoTransaccion int,
	email varchar(50),
	Descripcion varchar(50) not null,
	monto money not null default 0,
	Fecha Datetime,
	constraint pk_idtransaccion primary key (id),
	constraint fk_idtipotransaccion foreign key (idTipoTransaccion) references tipo_transaccion(id),
	constraint fk_emailtransaccion foreign key (email) references usuario(email)
)

-- crea la tabla tipoUsuario
create table tipoUsuario
(
	id int identity(1,1),
	Descripcion varchar(50) not null,
	constraint pk_idtipousuario primary key (id)
)

-- crea la tabla usuario
create table usuario
(
	email varchar(50),
	clave varchar(30) not null,
	id int identity(1,1),
	tipo_usuario varchar(50),
	constraint pk_email primary key (email), --llave primaria
	--constraint fk_idusuario foreign key (id) references persona(id), --llave foranea
	constraint fk_idtipousuario foreign key (id) references tipoUsuario(id)
)

-- crea la tabla persona
create table persona
(
	id int identity(1,1),
	Cedula varchar(20),
	email varchar(50) not null,
	Apellido1 varchar(50) not null,
	Apellido2 varchar(50) null,
	Direccion varchar(100) null,
	Telefono varchar(20),
	constraint pk_idpersona primary key (id),
	constraint fk_personaemail foreign key (email) references usuario(email), --llave foranea
	constraint uq_cedula unique (cedula)
)

alter table persona 
alter column Cedula varchar(20) Cedula varchar(30)

--Triggers
-- se crea la tabla para trigger auditoria
create table TipoUsuario_Auditoria
(
	id int identity(1,1),
	Descripcion varchar(50),
	Usuario vachar(50),
	Tipo varchar(20),
	Fecha Datetime
)

-- se crea la sentencia del trigger
create trigger Trigger_Auditoria_TipoUsuario
	on tipoUsuario
		after Insert, Delete

		as
		begin
		insert into TipoUsuario_Auditoria (id, Descripcion,Usuario,Fecha)
		select i.id, i.Descripcion, 'DBA', 'Ingreso',GETDATE() from inserted i
		union all
		select d.id, d.Descripcion, 'DBA', 'Salida',GETDATE() from inserted d

		end


select * from tipousuario
select * from TipoUsuario_Auditoria

--Procesos almacenados




