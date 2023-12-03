/*
	Qué es un esquema
	Un esquema es una colección lógica de objetos de base de datos, 
	como tablas, vistas, procedimientos almacenados, funciones y 
	otros objetos relacionados.

	Algunos aspectos importantes sobre los esquemas en SQL Server incluyen:

	-Organización de Objetos:
		Los esquemas se utilizan para organizar y agrupar objetos 
		relacionados en una base de datos. Por ejemplo, 
		puedes tener un esquema para las tablas de clientes, 
		otro esquema para las funciones relacionadas con la facturación, etc.

	-Propietario del Esquema:
		Cada esquema tiene un propietario asociado. 
		El propietario puede ser un usuario de la base de datos o 
		un rol de base de datos. Los objetos dentro del esquema 
		heredan el propietario del esquema.

	-Separación de Nombres:
		Los esquemas ayudan a evitar conflictos de nombres. Dos tablas 
		con el mismo nombre pueden existir en la misma base de datos si 
		pertenecen a esquemas diferentes.

	-Privilegios y Permisos:
		Los esquemas también se utilizan para administrar permisos y 
		privilegios. Puedes otorgar o denegar permisos en un esquema 
		específico, lo que afectará a todos los objetos dentro de ese 
		esquema.

*/

/* crear esquema */
CREATE SCHEMA facturacion

/* Cambiar el Esquema de un Objeto Existente */
ALTER SCHEMA facturacion TRANSFER Ejemplo