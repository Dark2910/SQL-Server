/*
	Las transacciones en SQL Server se utilizan para agrupar una o más 
	operaciones de bases de datos en una unidad atómica, consistente, 
	aislada y duradera, conocida como una transacción ACID (Atomicidad, 
	Consistencia, Aislamiento y Durabilidad)

	- BEGIN TRANSACTION inicia la transacción, y las operaciones de 
		base de datos se ejecutan dentro de esa transacción. 
	
	- COMMIT confirma la transacción
	
	- ROLLBACK la revierte en caso de fallo. Esto asegura que las 
		operaciones sean atómicas y consistentes.

	@@ROWCOUNT
	Es una variable global en SQL Server que contiene el número de filas 
	afectadas por la última instrucción SQL ejecutada. 

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
