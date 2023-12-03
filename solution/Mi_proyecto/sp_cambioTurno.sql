ALTER PROC [dbo].[cambioTurno](
	@idTurno turno,
	@estado tinyint,
	@observacion observaciones
)
AS
BEGIN
	SET NOCOUNT ON

	IF EXISTS( SELECT * FROM Turno WHERE idTurno = @idTurno)
	BEGIN
		UPDATE Turno 
		SET estado = @estado, 
			observacion = @observacion 
		WHERE idTurno = @idTurno

	END
	ELSE
	BEGIN
		SELECT 0 AS 'Resultado'

	END
END

/*
	SELECT * FROM Turno
	EXEC dbo.cambioTurno 1003,2,'HOLA'

*/