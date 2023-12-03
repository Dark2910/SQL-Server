/*
	Triggers
	Los triggers en SQL Server son un tipo de especial de procedimiento 
	almacenado que se ejecuta automaticamente en respuesta a ciertos 
	eventos en una tabla o vista.

	Estos eventos son utilizados para realizar acciones autom�ticas 
	en la base de datos en funci�n de estos eventos.

	Eventos que Activan Triggers:

	-	INSERT: Se ejecuta despu�s de la inserci�n de datos.
	-	UPDATE: Se ejecuta despu�s de la actualizaci�n de datos.
	-	DELETE: Se ejecuta despu�s de la eliminaci�n de datos.

	Tipos de Triggers:

	-	AFTER Triggers: 
			Se ejecutan despu�s de que se completa la acci�n que activa 
			el trigger (inserci�n, actualizaci�n o eliminaci�n).
	-	INSTEAD OF Triggers: 
			Se ejecutan en lugar de la instrucci�n que activa el trigger, 
			permitiendo modificar o reemplazar la acci�n original.
*/

CREATE TABLE PacienteLog(
	idPaciente INT PRIMARY KEY,
	idPais CHAR(3),
	fechaAlta DATETIME

)

ALTER TRIGGER TR_pacienteInsert ON Paciente
AFTER INSERT 
AS
BEGIN
	IF( SELECT idPais FROM  inserted ) = 'MEX'
	BEGIN
		INSERT INTO PacienteLog( idPaciente, idPais, fechaAlta)
			SELECT idPaciente, idPaciente, GETDATE() 
			FROM inserted

	END
END

EXEC	[dbo].[sp_altaPaciente]
		@dni = N'987654321',
		@nombre = N'Josue',
		@apellido = N'Nava',
		@fNacimiento = N'20000831',
		@domicilio = N'Guadalajara Mz K Lt 32',
		@idPais = N'Mex',
		@telefono = N'',
		@email = N'Nava.J.F@gmail.com',
		@observaciones = N''

SELECT * FROM PacienteLog