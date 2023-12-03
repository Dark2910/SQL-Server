USE[CentroMedico]

/*
	Las funciones RTRIM y LTRIM en SQL Server se utilizan para 
	eliminar espacios en blanco 

*/

DECLARE @nombre VARCHAR(20)
DECLARE @apellido VARCHAR(20)

SET @nombre = '            Juan           '
SET @apellido = 'Hernandez                '

SELECT '*' + @nombre + ' ' + @apellido + '*'

SELECT '*' + LTRIM(RTRIM(@nombre)) + ' ' + RTRIM(@apellido) + '*'