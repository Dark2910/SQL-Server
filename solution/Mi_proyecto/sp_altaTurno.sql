/*
	SELECT * FROM Paciente
	SELECT * FROM Medico
	SELECT * FROM Turno
*/

EXEC dbo.sp_altaTurno '20231106 19:42', '1005', '2', 'El paciente debe de estar en ayunas'


ALTER PROCEDURE [dbo].[sp_altaTurno](
		@fecha varchar(14),
		@idPaciente paciente,
		@idMedico medico,
		@observacion varchar(1000) = ''

	)
AS

SET NOCOUNT ON

IF NOT EXISTS( SELECT TOP 1 idTurno FROM Turno WHERE fechaturno = @fecha )
BEGIN
	INSERT INTO Turno(fechaturno, estado, observacion)
	VALUES (@fecha, 0, @observacion)

	DECLARE @lastIdTurno turno = @@IDENTITY

	INSERT INTO TurnoPacienteMedico(idTurno, idPaciente, idMedico)
	VALUES(@lastIdTurno, @idPaciente, @idMedico)

	PRINT 'Turno agregado'
END
ELSE
BEGIN
	PRINT 'Turno existente'
END


SELECT *
FROM TurnoPacienteMedico