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

/*
	SELECT * FROM Paciente

	SELECT dbo.obtenerPais(1) AS Pais
*/


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

/*
	SELECT dbo.concatenar('Eduardo', 'Espindola', 'Alcantara') AS 'Nombre'
*/
