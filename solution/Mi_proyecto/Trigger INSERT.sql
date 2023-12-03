/*
	Triggers
	Los triggers en SQL Server son un tipo de especial de procedimiento 
	almacenado que se ejecuta automaticamente en respuesta a ciertos 
	eventos en una tabla o vista.

	Estos eventos son utilizados para realizar acciones automáticas 
	en la base de datos en función de estos eventos.

	Eventos que Activan Triggers:

	-	INSERT: Se ejecuta después de la inserción de datos.
	-	UPDATE: Se ejecuta después de la actualización de datos.
	-	DELETE: Se ejecuta después de la eliminación de datos.

	Tipos de Triggers:

	-	AFTER Triggers: 
			Se ejecutan después de que se completa la acción que activa 
			el trigger (inserción, actualización o eliminación).
	-	INSTEAD OF Triggers: 
			Se ejecutan en lugar de la instrucción que activa el trigger, 
			permitiendo modificar o reemplazar la acción original.
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