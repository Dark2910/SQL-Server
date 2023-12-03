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

RESTORE DATABASE CentroMedico
FROM DISK = 'D:\CentroMedico\CentroMedico.bak'
WITH REPLACE, RECOVERY,
	MOVE 'CentroMedico' TO 'D:\CentroMedico\CentroMedico.mdf',
	MOVE 'CentroMedico_log' TO 'D:\CentroMedico\CentroMedico_log.ldf'
