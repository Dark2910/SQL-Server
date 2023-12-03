USE[CentroMedico];

/* IF-ELSE, BEGIN-END */
DECLARE @idPaciente INT = 4;
DECLARE @idTurno INT

IF @idPaciente = 4
BEGIN
	SET @idTurno = 20

	SELECT * 
	FROM Paciente 
	WHERE idPaciente = @idPaciente

	PRINT @idTurno
END
ELSE
BEGIN
	PRINT 'No se cumple la condición'
END

/* EXISTS */
IF EXISTS(SELECT * FROM Paciente WHERE idPaciente = 2)
	PRINT 'Existe'
ELSE
	Print 'No existe'

/* WHILE */
DECLARE @contador INT = 0

WHILE @contador < 11
BEGIN
	PRINT @contador
	SET @contador += 1
END

/* CASE */
DECLARE @value INT  = 2;
DECLARE @RESULT CHAR(10) = '';

SET @RESULT = (CASE WHEN @value = 1 THEN 'ROJO'
					WHEN @value = 2 THEN 'AMARILLO'
					WHEN @value = 3 THEN 'VERDE'
				END)
PRINT @RESULT;


SELECT *, (CASE WHEN estado = 2 THEN 'ROJO'
				WHEN estado = 3 THEN 'AMARILLO'
				WHEN estado = 4 THEN 'VERDE'
				ELSE 'NEGRO'
			END) AS 'Color'
FROM Turno

/* RETURN BREAK */
DECLARE @contador INT = 0
WHILE @contador < 11
BEGIN
	IF @contador = 5
		RETURN

	PRINT @contador
	SET @contador += 1
END

DECLARE @contador INT = 0
WHILE @contador < 11
BEGIN
	IF @contador = 5
		BREAK

	PRINT @contador
	SET @contador += 1
END

/* TRY CATCH */
DECLARE @contador INT
BEGIN TRY
	SET @contador = 'Txt';
END TRY
BEGIN CATCH
	PRINT 'No se pudo setear @contador por el tipo de dato'
END CATCH