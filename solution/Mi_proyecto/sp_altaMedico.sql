/*
	SELECT * FROM Medico
	SELECT * FROM Especialidad
	SELECT * FROM MedicoEspecialidad

	EXEC dbo.sp_altaMedico 'Rafael', 'Ramirez', '2', ''

*/

CREATE PROCEDURE [dbo].[sp_altaMedico](
	@nombre varchar(50),
	@apellido varchar(20),
	@idespecialidad int,
	@descripcion varchar(1000) = ''
)
AS

SET NOCOUNT ON

IF NOT EXISTS( SELECT TOP 1 idMedico FROM Medico WHERE Medico.Nombre = @nombre AND Medico.Apellido = @apellido)
BEGIN
	INSERT INTO Medico(Nombre, Apellido)
	VALUES(@nombre, @apellido)

	DECLARE @lastIdMedico int = @@IDENTITY

	INSERT INTO MedicoEspecialidad(idMedico, idEspecialidad, Descripcion)
	VALUES(@lastIdMedico, @idespecialidad, @descripcion)

	PRINT 'Medico agregado' 

END
ELSE
BEGIN
	PRINT 'Medico existente'

END
