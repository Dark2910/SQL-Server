/*
	ISNULL
	es una función en SQL Server que se utiliza para evaluar si una 
	expresión es nula y, en ese caso, devuelve un valor predeterminado.

	ISNULL(expresion, valor_predeterminado)
*/

DECLARE	@ordenamiento CHAR(1)
DECLARE @valorOrdenamiento CHAR(1)

SET @valorOrdenamiento = ISNULL(@ordenamiento, 'A')

PRINT @valorOrdenamiento;

/**/

DECLARE @entero INT

SET @entero = NULL

SELECT ISNULL(@entero, 0) AS Valor



DECLARE @decimal DECIMAL(10,2)

SET @decimal = NULL

SELECT ISNULL(@decimal, 0.00) AS Valor



DECLARE @cadena VARCHAR(50)

SET @cadena = NULL

SELECT ISNULL(@cadena, 'Texto predeterminado') AS Valor



DECLARE @fecha DATETIME

SET @fecha = NULL

SELECT ISNULL(@fecha, GETDATE()) AS Valor



DECLARE @booleano BIT

SET @booleano = NULL

SELECT ISNULL(@booleano, 0) AS Valor



DECLARE @moneda MONEY

SET @moneda = NULL

SELECT ISNULL(@moneda, 0.00) AS Valor

