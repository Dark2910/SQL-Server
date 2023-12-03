
DECLARE @turnos TABLE(
	id INT IDENTITY(1,1) PRIMARY KEY,
	idTurno turno,
	idPaciente paciente
)

INSERT INTO @turnos(idTurno, idPaciente)
SELECT TPM.idTurno, Pa.idPaciente
FROM Paciente Pa
INNER JOIN TurnoPacienteMedico TPM ON TPM.idPaciente = Pa.idPaciente


DECLARE @i INT = 1
DECLARE @total INT = (SELECT COUNT(*) FROM @turnos)
DECLARE @idPaciente INT = 3

WHILE @i <= @total
BEGIN
	IF(SELECT idPaciente FROM @turnos WHERE id = @i) <> @idPaciente
		DELETE FROM @turnos WHERE id = @i

	SET @i += 1
END

SELECT * FROM @turnos 

SELECT * 
FROM Paciente P
INNER JOIN @turnos T ON P.idPaciente = T.idPaciente