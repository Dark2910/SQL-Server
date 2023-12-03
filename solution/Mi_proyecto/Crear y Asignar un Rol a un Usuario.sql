/*
	¿Qué son los permisos?
	Los permisos son derechos que se conceden a usuarios o roles para 
	realizar operaciones específicas en objetos de la base de datos, como 
	tablas, vistas, procedimientos almacenados y otros objetos. 
	Los permisos controlan el acceso y la capacidad de realizar acciones 
	sobre estos objetos. 

	¿Qué son los roles?
	En SQL Server, un rol es un conjunto de permisos que se pueden 
	asignar a uno o más usuarios. Los roles simplifican la administración 
	de permisos, ya que puedes asignar permisos a un rol y luego asignar 
	ese rol a múltiples usuarios.

	¿Qué son los usuarios?
	Un usuario en SQL Server es una entidad que puede acceder y realizar 
	operaciones en una base de datos. Un usuario debe estar asociado con 
	un inicio de sesión (login) de SQL Server.
*/


USE[CentroMedico]

CREATE USER brenda FOR LOGIN Brenda WITH DEFAULT_SCHEMA=[dbo]

CREATE ROLE Pagos AUTHORIZATION dbo
ALTER ROLE Pagos ADD MEMBER brenda