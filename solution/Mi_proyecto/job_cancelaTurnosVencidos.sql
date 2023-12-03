/*
	Schedule job

	Los "SQL Server Agent Jobs" (también conocidos como 
	"SQL Server Agent Scheduled Jobs" o simplemente "SQL Server Jobs") 
	son tareas automatizadas que se pueden programar para ejecutarse en 
	momentos específicos o en intervalos regulares. Estas tareas pueden ser 
	scripts Transact-SQL, procedimientos almacenados, operaciones de 
	mantenimiento, paquetes SSIS, entre otros.

	NOTA:
	Esta funcion se encuentra en versiones de paga de SQL Server

	El siguiente sript emula un schedule job utilizando sqlcmd 
	mediante un archivo .bat

*/

USE[CentroMedico]
GO

UPDATE Turno
SET estado = 2
WHERE( CONVERT(CHAR(8), fechaturno, 112) = CONVERT(CHAR(8), GETDATE(), 112))
	AND estado = 0

