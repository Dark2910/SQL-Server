ALTER PROCEDURE [dbo].[sp_altaPaciente](
		@dni varchar(20),
		@nombre varchar(50),
		@apellido varchar(50),
		@fNacimiento varchar(8),
		@domicilio varchar(50),
		@idPais char(3),
		@telefono varchar(20) = '',
		@email varchar(30),
		@observaciones varchar(1000) = ''
	)
AS
IF NOT EXISTS( SELECT * FROM Paciente WHERE dni = @dni )
BEGIN
	INSERT INTO Paciente (dni, nombre, apellido, fNacimiento, domicilio, idPais, telefono, email, observaciones)
	VALUES (@dni, @nombre, @apellido, @fNacimiento, @domicilio, @idPais, @telefono, @email, @observaciones)

	PRINT 'Paciente agregado'
END
ELSE
BEGIN
	PRINT 'Paciente existente'
END

/*
	EXEC dbo.sp_altaPaciente '0123456789', 'Mario', 'Lopez', '19801121', 'Lomas Verdes No.32', 'ARG', '', 'marioL@hotmail.com', '';

	SELECT *
	FROM Paciente
*/