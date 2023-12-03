USE [CentroMedico];

/* UPDATE */
SELECT *
FROM Paciente

UPDATE Paciente
SET observaciones = 'Sin observaciones'
WHERE Paciente.idPaciente = 4

UPDATE Paciente
SET telefono = 5578218596
WHERE Paciente.DNI = 27854236

/* DELETE */
SELECT * 
FROM Paciente

DELETE FROM Paciente
WHERE Paciente.idPaciente = 2

/* DELETE - FOREIGN KEY */
SELECT * 
FROM TurnoPacienteMedico

SELECT *
FROM Paciente

DELETE FROM Paciente
WHERE Paciente.idPaciente = 3

