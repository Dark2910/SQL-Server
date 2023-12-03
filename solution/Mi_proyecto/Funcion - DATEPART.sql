/*
	DATEPART()
	Se utiliza para extraer partes específicas de una fecha, como el año, 
	el mes, el día, la hora, el minuto, el segundo,
*/

SELECT GETDATE()

SELECT DATEPART(yy,GETDATE()) AS 'Year'
SELECT DATEPART(mm,GETDATE()) AS 'Month'
SELECT DATEPART(dd,GETDATE()) AS 'DAY'
SELECT DATEPART(hh,GETDATE()) AS 'Hour'
SELECT DATEPART(mi,GETDATE()) AS 'Minute'
SELECT DATEPART(ss,GETDATE()) AS 'Second'


/* dw -> DAYWEEK */
SELECT DATEPART(dw,'20001029') AS 'DayWeek'