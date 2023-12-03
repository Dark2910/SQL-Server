/*
	Las transacciones en SQL Server se utilizan para agrupar una o m�s 
	operaciones de bases de datos en una unidad at�mica, consistente, 
	aislada y duradera, conocida como una transacci�n ACID (Atomicidad, 
	Consistencia, Aislamiento y Durabilidad)

	- BEGIN TRANSACTION inicia la transacci�n, y las operaciones de 
		base de datos se ejecutan dentro de esa transacci�n. 
	
	- COMMIT confirma la transacci�n
	
	- ROLLBACK la revierte en caso de fallo. Esto asegura que las 
		operaciones sean at�micas y consistentes.

	@@ROWCOUNT
	Es una variable global en SQL Server que contiene el n�mero de filas 
	afectadas por la �ltima instrucci�n SQL ejecutada. 

*/

USE[CentroMedico]

SELECT *
FROM Paciente

BEGIN TRANSACTION 
	UPDATE Paciente SET telefono = 9876543210 WHERE idPaciente = 1005

	IF @@ROWCOUNT = 1
		COMMIT TRAN
	ELSE
		ROLLBACK TRAN

/**/

BEGIN TRANSACTION 
	UPDATE Paciente SET telefono = 0123456789 WHERE apellido = 'Lopez'

	IF @@ROWCOUNT = 1
		COMMIT TRAN
	ELSE
		ROLLBACK TRAN
