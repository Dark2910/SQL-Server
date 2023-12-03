/*
	DATEDIFF
	Se utiliza para calcular la diferencia entre dos fechas en t�rminos de 
	un intervalo de tiempo espec�fico.
*/

SELECT DATEDIFF(yy,'20171109',GETDATE()) AS diferenciaA�os
SELECT DATEDIFF(mm,'20171109',GETDATE()) AS diferenciaMeses
SELECT DATEDIFF(dd,'20171109',GETDATE()) As diferenciasDias
