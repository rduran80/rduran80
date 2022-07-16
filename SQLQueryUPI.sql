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
select nombre from usuario where clave='123'

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

