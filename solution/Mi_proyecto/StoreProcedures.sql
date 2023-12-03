/**/
CREATE PROCEDURE sp_pacientes
AS
BEGIN
    SELECT * 
	FROM Paciente
END;

EXEC sp_pacientes

/**/
CREATE PROCEDURE sp_paciente(
	@idPaciente int
)
AS
BEGIN
	SELECT *
	FROM Paciente
	WHERE idPaciente = @idPaciente
END;

EXEC sp_paciente 4;