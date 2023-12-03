ALTER FUNCTION fn_convertDateToText(
	@date DATETIME
	
)
RETURNS VARCHAR(60)
AS
BEGIN
	DECLARE @dayWeek VARCHAR(20)
	DECLARE @dayNumber VARCHAR(20)
	DECLARE @month VARCHAR(20)
	DECLARE @year VARCHAR(20)
	DECLARE @dateText VARCHAR(60)

	SET @dayWeek = (CASE WHEN DATEPART(dw, @date) = 1 THEN 'Domingo'
					WHEN DATEPART(dw, @date) = 2 THEN 'Lunes'
					WHEN DATEPART(dw, @date) = 3 THEN 'Martes'
					WHEN DATEPART(dw, @date) = 4 THEN 'Miércoles'
					WHEN DATEPART(dw, @date) = 5 THEN 'Jueves'
					WHEN DATEPART(dw, @date) = 6 THEN 'Viernes'
					WHEN DATEPART(dw, @date) = 7 THEN 'Sábado'
				END)

	SET @month = (CASE WHEN DATEPART(mm, @date) = 1 THEN 'Enero'
					WHEN DATEPART(mm, @date) = 2 THEN 'Febrero' 
					WHEN DATEPART(mm, @date) = 3 THEN 'Marzo'
					WHEN DATEPART(mm, @date) = 4 THEN 'Abril'
					WHEN DATEPART(mm, @date) = 5 THEN 'Mayo'
					WHEN DATEPART(mm, @date) = 6 THEN 'Junio'
					WHEN DATEPART(mm, @date) = 7 THEN 'Julio'
					WHEN DATEPART(mm, @date) = 8 THEN 'Agosto'
					WHEN DATEPART(mm, @date) = 9 THEN 'Septiembre'
					WHEN DATEPART(mm, @date) = 10 THEN 'Octubre'
					WHEN DATEPART(mm, @date) = 11 THEN 'Noviembre'
					WHEN DATEPART(mm, @date) = 12 THEN 'Diciembre'
				END)

	SET @dayNumber = CONVERT(CHAR(2), DATEPART(dd, @date))

	SET @year = CONVERT(CHAR(4), DATEPART(YY, @date))

	SET @dateText = @dayWeek + ', ' + @month + ' ' + @dayNumber + ', ' + @year

	RETURN @dateText
END

/*
	PRINT dbo.fn_convertDateToText('19950214')
	SELECT dbo.fn_convertDateToText(GETDATE()) AS 'Fecha'

*/