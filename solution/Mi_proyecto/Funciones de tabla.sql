
CREATE FUNCTION dbo.listaPaises()
RETURNS TABLE
AS
RETURN
( 
	SELECT idPais, Pais 
	FROM Pais
)

/*
	SELECT *
	FROM Pais

	SELECT * FROM listaPaises()

*/


CREATE FUNCTION dbo.especialidades( 
	@especialidad VARCHAR(80)
)
RETURNS @especialidades TABLE(Especialidad VARCHAR(80))
AS
BEGIN
	INSERT INTO @especialidades (Especialidad) VALUES (@especialidad)
	
	RETURN
END

/*
	SELECT *
	FROM Especialidad

	SELECT * FROM dbo.especialidades('Neumología')

*/


