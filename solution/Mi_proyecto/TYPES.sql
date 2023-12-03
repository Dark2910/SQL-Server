/*
	1- User-Defined Data Type (Tipo de Datos Definido por el Usuario):
		Puedes crear tus propios tipos de datos definidos por el usuario en 
		SQL Server. Luego, puedes usar este tipo de datos en definiciones de 
		tabla, procedimientos almacenados, etc.

		Ejemplo:
		-------------------------------------------
		CREATE TYPE Telefono AS VARCHAR(15);
		-------------------------------------------

	2- Table Type (Tipo de Tabla):
		SQL Server también permite definir tipos de tablas que se pueden 
		utilizar como parámetros en procedimientos almacenados o funciones. 
		Estos tipos de tablas se conocen como Table Types.

		Puedes utilizar este tipo de tabla como un parámetro en 
		procedimientos almacenados o funciones.

		Ejemplo:
		---------------------------------------------
		CREATE TYPE dbo.TipoTabla AS TABLE(
			Columna1 INT,
			Columna2 VARCHAR(50)
		);
		---------------------------------------------

	3- XML Data Type (Tipo de Datos XML):
		SQL Server incluye un tipo de datos nativo llamado XML que se utiliza
		para almacenar datos XML. Puedes utilizar este tipo de datos para 
		almacenar documentos XML y realizar operaciones XML en la base de datos.

		Ejemplo:
		---------------------------------------------
		CREATE TABLE EjemploXML(
			ID INT PRIMARY KEY,
			Datos XML
		);
		----------------------------------------------
		En este caso, la columna Datos es de tipo XML.

*/

USE [CentroMedico]
GO;

CREATE TYPE medico FROM INT NOT NULL
CREATE TYPE paciente FROM INT NOT NULL
CREATE TYPE turno FROM INT NOT NULL
CREATE TYPE historia FROM INT NOT NULL
CREATE TYPE observaciones FROM VARCHAR(1000) NULL