use[CentroMedico]

/* Crear BACKUP */
DECLARE @fecha CHAR(12) 
DECLARE @path VARCHAR(100)
DECLARE @name VARCHAR(20)

SET @fecha = CONVERT(CHAR(8), GETDATE(), 112) + REPLACE(CONVERT(CHAR(5),GETDATE(), 108), ':', '')
SET @path = 'D:\CentroMedico\CentroMedico-' + @fecha + '.bak'
SET @name = 'CentroMedico-' + @fecha

BACKUP DATABASE CentroMedico
TO DISK = @path
WITH NO_COMPRESSION, NAME = @name

/* Resturar DB */
RESTORE DATABASE CentroMedico_1
FROM DISK = 'D:\CentroMedico\CentroMedico-202311261946.bak'
WITH REPLACE, RECOVERY,
     MOVE 'CentroMedico' TO 'D:\CentroMedico\CentroMedico_1.mdf',
     MOVE 'CentroMedico_log' TO 'D:\CentroMedico\CentroMedico_1_log.ldf';