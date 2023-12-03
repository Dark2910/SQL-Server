
ALTER PROC [dbo].[sp_historiaPaciente](
	@idPaciente paciente
)
AS
BEGIN
	SET NOCOUNT ON

	SELECT *
	FROM Paciente P
	INNER JOIN HistoriaPacienteMedico HPM
	ON HPM.idPaciente = P.idPaciente
	INNER JOIN Historia H
	ON H.idHistoria = HPM.idHistoria
	INNER JOIN MedicoEspecialidad ME
	ON ME.idMedico = HPM.idMedico
	INNER JOIN Medico M
	ON M.idMedico = ME.idMedico
	WHERE P.idPaciente = @idPaciente

	/*
		EXEC sp_historiaPaciente 3

	*/

END