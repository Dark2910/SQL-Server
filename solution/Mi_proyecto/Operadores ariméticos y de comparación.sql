/* Uso de operadores (+ - * / %) */
DECLARE @n1 DECIMAL(10,4) = 20.1234
DECLARE @n2 DECIMAL(10,4) = 30.4321
DECLARE @result DECIMAL(10,4)

SET @result = @n1 * @n2
PRINT @result

/* < > =  <> */
DECLARE @n1 DECIMAL(10,4) = 20.1234
DECLARE @n2 DECIMAL(10,4) = 30.4321
DECLARE @txt1 VARCHAR(50) = 'Hola A'
DECLARE @txt2 VARCHAR(50) = 'Hola B'

IF @n1 <> @n2
	PRINT 'n1 es diferente'

IF @txt1 < @txt2
	PRINT 'txt1 es menor'