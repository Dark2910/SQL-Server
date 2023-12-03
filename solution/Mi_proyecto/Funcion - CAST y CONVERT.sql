
/*
	- CAST es puramente un estándar ANSI-SQL. Pero, CONVERT es función 
		específica de SQL Server del mismo modo que tenemos en to_char o 
		to_date en Oracle

	- CAST está predominantemente disponible en todos los productos de bases 
		de datos debido a su portabilidad y facilidad de uso

	- No habrá una diferencia importante en términos de ejecución de consultas 
		entre las funciones SQL Cast y SQL Convert. Como usted Puede ver existe 
		una ligera diferencia en los tiempos de ejecución, esto se debe a la 
		conversión interna de SQL CAST y a su función nativa de CONVERTIR SQL, 
		pero la función CONVERTIR viene con una opción “Código de estilo” para 
		derivar varias combinaciones de fecha y hora, decimales y valores 
		monetarios. En cualquier caso, la función CONVERT de SQL se ejecuta 
		ligeramente mejor que la función CAST de SQL

*/

DECLARE @numero MONEY
SET @numero = 500.75

DECLARE @fecha DATETIME
SET @fecha = GETDATE()

PRINT @numero
SELECT CAST(@numero as int) AS numero

/*
	112 Es un formato de fecha en sql
*/
PRINT @fecha
SELECT CONVERT(varchar(20), @fecha, 112) AS fecha

