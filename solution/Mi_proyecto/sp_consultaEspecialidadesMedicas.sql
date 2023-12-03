
ALTER PROC [dbo].[sp_especialidadesMedicas]

AS
BEGIN
	IF EXISTS( SELECT * FROM Especialidad)
		SELECT * FROM Especialidad
	ELSE
		SELECT 0 AS Resultado
END