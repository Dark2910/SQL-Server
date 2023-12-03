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

USE[CentroMedico]

CREATE TABLE PacienteLog(
	idPaciente INT PRIMARY KEY,
	idPais CHAR(3),
	fechaAlta DATETIME

)

ALTER TABLE PacienteLog 
	ADD fechaModificacion DATETIME


ALTER TRIGGER TR_pacienteUpdate ON Paciente
AFTER UPDATE
AS
BEGIN 
	IF EXISTS(SELECT idPaciente 
				FROM PacienteLog
				WHERE idPaciente = (SELECT idPaciente 
									FROM inserted))
	BEGIN
		UPDATE PacienteLog 
		SET	fechaModificacion  = GETDATE()
		WHERE idPaciente = (SELECT idPaciente 
							FROM inserted)
	END
	ELSE
	BEGIN
		INSERT INTO PacienteLog(idPaciente, idPais, fechaModificacion)
		SELECT idPaciente, idPais, GETDATE() 
		FROM inserted
	END
END


EXEC	[dbo].[sp_altaPaciente]
		@dni = N'2',
		@nombre = N'Rafael',
		@apellido = N'Ayala',
		@fNacimiento = N'19790725',
		@domicilio = N'Guadalajara Mz K Lt 32',
		@idPais = N'Mex',
		@telefono = N'',
		@email = N'Rafa@gmail.com',
		@observaciones = N''

SELECT * FROM Paciente
SELECT * FROM PacienteLog

UPDATE Paciente 
	SET nombre = 'Melisa'
	WHERE idPaciente = 4	