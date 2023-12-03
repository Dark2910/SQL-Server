/*
	SELECT * FROM Turno
	SELECT * FROM TurnoPacienteMedico
*/


CREATE PROC [dbo].[sp_eliminarTurno](
	@idTurno turno
)
AS
SET NOCOUNT ON

IF EXISTS(SELECT idTurno FROM Turno WHERE idTurno = @idTurno)
BEGIN
	DELETE FROM TurnoPacienteMedico
	WHERE idTurno = @idTurno

	DELETE FROM Turno
	WHERE idTurno = @idTurno

END
ELSE
BEGIN
	SELECT 0 AS 'resultado'
END

/*
	EXEC [dbo].[sp_eliminarTurno] 1013
*/