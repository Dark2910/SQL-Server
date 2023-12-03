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

DECLARE @fecha CHAR(12) 
DECLARE @path VARCHAR(100)
DECLARE @name VARCHAR(20)

SET @fecha = CONVERT(CHAR(8), GETDATE(), 112) + REPLACE(CONVERT(CHAR(5),GETDATE(), 108), ':', '')
SET @path = 'D:\CentroMedico\CentroMedico-' + @fecha + '.bak'
SET @name = 'CentroMedico-' + @fecha

BACKUP DATABASE CentroMedico
TO DISK = @path
WITH NO_COMPRESSION, NAME = @name