create database EXAMEN2_DB
use EXAMEN2_DB

drop table Cliente

create table Cliente
(
	id int identity(1,1),
	nombre varchar(50),
	cedula varchar(20),
	telefono varchar(20),
	direccion varchar(50),
	servicio varchar(20),
	factura int,
	mes varchar(20),
	monto float,
	descuento float,
	subtotal float,
	iva float,
	total float
)

select * from Cliente
insert into Cliente values('Roy','111','222','San Jose','Agua',1,'Enero',2000,200,1800,160,1960)

create proc insertarCliente
	@nombre varchar(50),
	@cedula varchar(20),
	@telefono varchar(20),
	@direccion varchar(50),
	@servicio varchar(20),
	@factura int,
	@mes varchar(20),
	@monto float,
	@descuento float,
	@subtotal float,
	@iva float,
	@total float
	as
	begin
	insert into Cliente (nombre,cedula,telefono,direccion,servicio,factura,mes,monto,descuento,subtotal,iva,total)
	select @nombre,@cedula,@telefono,@direccion,@servicio,@factura,@mes,@monto,@descuento,@subtotal,@iva,@total
	end

	execute insertarCliente 'Maureen','222','333','Heredia','Agua',1,'Enero',2000,200,1800,160,1960