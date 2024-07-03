USE [CentroMedico]
GO
/****** Object:  StoredProcedure [dbo].[sp_altaMedico]    Script Date: 2024-07-03 12:00:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_altaMedico](
	@nombre varchar(50),
	@apellido varchar(20),
	@idespecialidad int,
	@descripcion varchar(50)
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
GO
/****** Object:  StoredProcedure [dbo].[sp_altaPaciente]    Script Date: 2024-07-03 12:00:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_altaPaciente](
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
GO
/****** Object:  StoredProcedure [dbo].[sp_altaTurno]    Script Date: 2024-07-03 12:00:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_altaTurno](
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
GO
/****** Object:  StoredProcedure [dbo].[sp_cambioPaciente]    Script Date: 2024-07-03 12:00:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_cambioPaciente](
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
GO
/****** Object:  StoredProcedure [dbo].[sp_cambioTurno]    Script Date: 2024-07-03 12:00:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_cambioTurno](
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
GO
/****** Object:  StoredProcedure [dbo].[sp_consultaEspecialidadesMedicas]    Script Date: 2024-07-03 12:00:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_consultaEspecialidadesMedicas]

AS
BEGIN
	IF EXISTS( SELECT * FROM Especialidad)
		SELECT * FROM Especialidad
	ELSE
		SELECT 0 AS Resultado
END
GO
/****** Object:  StoredProcedure [dbo].[sp_consultaHistoriaPaciente]    Script Date: 2024-07-03 12:00:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_consultaHistoriaPaciente](
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
GO
/****** Object:  StoredProcedure [dbo].[sp_consultaTurnosPacientes]    Script Date: 2024-07-03 12:00:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_consultaTurnosPacientes](
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
GO
/****** Object:  StoredProcedure [dbo].[sp_eliminarTurno]    Script Date: 2024-07-03 12:00:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	SELECT * FROM Turno
	SELECT * FROM TurnoPacienteMedico
*/


CREATE PROC [dbo].[sp_eliminarTurno](
	@idTurno turno
)
AS
BEGIN
	SET NOCOUNT ON

	IF EXISTS(SELECT idTurno FROM Turno WHERE idTurno = @idTurno)
	BEGIN
		DELETE FROM Turno
		WHERE idTurno = @idTurno

		DELETE FROM TurnoPacienteMedico
		WHERE idTurno = @idTurno

	END
	ELSE
	BEGIN
		SELECT 0 AS 'resultado'
	END


END
GO
/****** Object:  StoredProcedure [dbo].[sp_paciente]    Script Date: 2024-07-03 12:00:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_paciente](
	@idPaciente int
)
AS
BEGIN
	SELECT *
	FROM Paciente
	WHERE idPaciente = @idPaciente
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_pacientes]    Script Date: 2024-07-03 12:00:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_pacientes]
AS
BEGIN
    SELECT * 
	FROM Paciente
END;
GO
