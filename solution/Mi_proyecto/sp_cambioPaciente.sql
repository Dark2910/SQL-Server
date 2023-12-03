
CREATE PROC sp_cambioPaciente(
	@idPaciente INT,
	@dni VARCHAR(20),
	@nombre VARCHAR(50),
	@apellido VARCHAR(50),
	@fNacimiento VARCHAR(8),
	@domicilio VARCHAR(50),
	@telefono VARCHAR(20),
	@email VARCHAR(50),
	@observaciones observaciones
)
AS
BEGIN
	IF EXISTS(SELECT idPaciente FROM Paciente)
	BEGIN
		UPDATE Paciente 
		SET dni = @dni,
			nombre = @nombre,
			apellido = @apellido,
			fNacimiento = @fNacimiento,
			domicilio = @domicilio,
			telefono = @telefono,
			email = @email,
			observaciones = @observaciones
		WHERE idPaciente = @idPaciente 

	END
	ELSE
	BEGIN
		SELECT 0 AS 'Resultado'

	END

END

/*
	SELECT *
	FROM Paciente

	EXEC sp_cambioPaciente 1,null,'Paulina','Ayala','20000509','Piedras 2155','5534097856','Ayala.L.P@gmail.com',''

*/