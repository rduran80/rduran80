--crear base de datos
create database UPI
use upi --posicionarse en la base de datos

--crear tablas
create table usuario(
	codigo int identity(1,1),
	nombre varchar(50) not null,
	clave varchar(30) not null
)

--consultas
select * from usuario

--consulta con parametro
select nombre from usuario where clave='789'

--borar tabla
drop table usuario

--insertar registros
--especificando atributos
insert into usuario (nombre,clave) values ('Pablo','123') 

--sin especificar atributos(todos)
insert into usuario values ('Maureen','123') 

--varios registros sin especificar atributos(todos)
insert into usuario values ('Tasha','123'),('Krisley','123')

--actualizar
update usuario set clave='888' where codigo = 4

--borrar 
delete usuario where codigo = '3'

--Tabla de articulos
create table articulos(
	codigo int identity(1,1),
	descripcion varchar(100) not null,
	cantidad int not null,
	precio float not null,
	fechaIngreso date not null,
)

drop table articulos

insert into articulos values('Folder',10,50,'2222-03-11')
select * from articulos

update articulos set descripcion = 'Folder Amarillo', cantidad = 200, precio = 50, fechaIngreso = '2222-03-11' where codigo = 2 

delete articulos where codigo = 3

Select SYSDATETIME() as [SYSDATETIME]

--***** Procesos almacenados usuario *********
--Crer preoceso
create proc ConsultaUsuario
	as
	begin
	select * from usuario
	end

create proc ConsultaUsuarioFiltro
	@nombre varchar(50) 
	as
	begin
	select * from usuario where nombre = @nombre
	end

create proc BorrarUsuario
	@nombre varchar(50) 
	as
	begin
	delete usuario where nombre = @nombre
	end

create proc ActualizarUsuario
	@codigo int,
	@nombre varchar(50),
	@clave varchar(30)
	as
	begin
	update usuario set nombre = @nombre, clave = @clave where codigo = @codigo
	end

create proc ConsultaArticulo
	as
	begin
	select * from articulos
	end

create proc ConsultaArticuloFiltro
	@codigo int 
	as
	begin
	select * from articulos where codigo = @codigo
	end

create proc BorrarArticulo
	@codigo int 
	as
	begin
	delete articulos where codigo = @codigo
	end

create proc ActualizarArticulo
	@codigo int,
	@descripcion varchar(100),
	@cantidad int,
	@precio float,
	@fechaIngreso date
	as
	begin
	update articulos set descripcion = @descripcion, cantidad = @cantidad, precio=@precio, fechaIngreso=@fechaIngreso where codigo = @codigo
	end

--Ejecutar el proceso
-- Para usuarios
execute ConsultaUsuario
execute ConsultaUsuarioFiltro 'Ana'
execute BorrarUsuario 'Ana'
execute BorrarUsuario 'Ana'
execute ActualizarUsuario 15,'Andrea','123'

-- Para articulos
execute ConsultaArticulo
execute ConsultaArticuloFiltro 11
execute BorrarArticulo 11
execute ActualizarArticulo 7,'Paquete de hojas blancas 100 U',200,1500,'2022-07-13'

drop proc ActualizarUsuario
