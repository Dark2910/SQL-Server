
ALTER PROC [dbo].[sp_turnosPaciente](
		@idPaciente paciente
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT * 
	FROM Paciente P
	INNER JOIN TurnoPacienteMedico TPM
	ON TPM.idPaciente = P.idPaciente
	INNER JOIN Turno T
	ON T.idTurno = TPM.idTurno
	INNER JOIN Medico M
	ON M.idMedico = TPM.idMedico
	WHERE P.idPaciente = @idPaciente

END

EXEC dbo.sp_turnosPaciente 3