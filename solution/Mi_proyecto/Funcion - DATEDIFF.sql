/*
	DATEDIFF
	Se utiliza para calcular la diferencia entre dos fechas en términos de 
	un intervalo de tiempo específico.
*/

SELECT DATEDIFF(yy,'20171109',GETDATE()) AS diferenciaAños
SELECT DATEDIFF(mm,'20171109',GETDATE()) AS diferenciaMeses
SELECT DATEDIFF(dd,'20171109',GETDATE()) As diferenciasDias
