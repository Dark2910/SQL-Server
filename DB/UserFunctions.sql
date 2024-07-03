USE [CentroMedico]
GO
/****** Object:  UserDefinedFunction [dbo].[concatenar]    Script Date: 2024-07-03 12:02:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[concatenar](
	@nombre varchar(33),
	@apellidoPa varchar(33),
	@apellidoMa varchar(33)
)
RETURNS VARCHAR(99)
AS
BEGIN
	DECLARE @nombreCompleto VARCHAR(99)
	SET @nombreCompleto = @nombre + ', ' + @apellidoPa + ', ' + @apellidoMa

	RETURN @nombreCompleto
END
GO
/****** Object:  UserDefinedFunction [dbo].[especialidades]    Script Date: 2024-07-03 12:02:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[especialidades]( 
	@especialidad VARCHAR(80)
)
RETURNS @especialidades TABLE(Especialidad VARCHAR(80))
AS
BEGIN
	INSERT INTO @especialidades (Especialidad) VALUES (@especialidad)
	
	RETURN
END
GO
/****** Object:  UserDefinedFunction [dbo].[obtenerPais]    Script Date: 2024-07-03 12:02:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Funciones escalares
	Las funciones escalares devuelven un solo valor basado en los 
	argumentos de entrada.

*/

CREATE FUNCTION [dbo].[obtenerPais](
	@idPaciente paciente
)
RETURNS VARCHAR(50)
AS
BEGIN
	DECLARE @Pais VARCHAR(50)
	SET @Pais = ( SELECT P.Pais
					FROM Paciente Pa
					INNER JOIN Pais	P ON P.idPais = Pa.idPais
					WHERE Pa.idPaciente = @idPaciente
					)
	RETURN @Pais
END	
GO
/****** Object:  UserDefinedFunction [dbo].[suma]    Script Date: 2024-07-03 12:02:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[suma](@n1 int, @n2 int)
RETURNS INT
AS
BEGIN
	DECLARE @total INT
	SET @total = @n1 + @n2
	return @total

END
GO
/****** Object:  UserDefinedFunction [dbo].[listaPaises]    Script Date: 2024-07-03 12:02:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[listaPaises]()
RETURNS TABLE
AS
RETURN
( 
	SELECT idPais, Pais 
	FROM Pais
)
GO
