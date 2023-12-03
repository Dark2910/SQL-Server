/*
	1- Deberás crear el Tipo de Dato Especialidad INT
	2- Una vez creado el tipo Especialidad, deberás asignarlo en el campo 
		idEspecialidad de las tablas Especialidad y MedicoEspecialidad.

*/

CREATE TYPE especialidad FROM INT NOT NULL

SELECT * FROM Especialidad
SELECT * FROM MedicoEspecialidad

ALTER TABLE Especialidad ALTER COLUMN idEspecialidad especialidad
ALTER TABLE MedicoEspecialidad ALTER COLUMN idEspecialidad especialidad
