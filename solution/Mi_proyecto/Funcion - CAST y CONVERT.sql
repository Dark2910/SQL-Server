
/*
	- CAST es puramente un est�ndar ANSI-SQL. Pero, CONVERT es funci�n 
		espec�fica de SQL Server del mismo modo que tenemos en to_char o 
		to_date en Oracle

	- CAST est� predominantemente disponible en todos los productos de bases 
		de datos debido a su portabilidad y facilidad de uso

	- No habr� una diferencia importante en t�rminos de ejecuci�n de consultas 
		entre las funciones SQL Cast y SQL Convert. Como usted Puede ver existe 
		una ligera diferencia en los tiempos de ejecuci�n, esto se debe a la 
		conversi�n interna de SQL CAST y a su funci�n nativa de CONVERTIR SQL, 
		pero la funci�n CONVERTIR viene con una opci�n �C�digo de estilo� para 
		derivar varias combinaciones de fecha y hora, decimales y valores 
		monetarios. En cualquier caso, la funci�n CONVERT de SQL se ejecuta 
		ligeramente mejor que la funci�n CAST de SQL

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

