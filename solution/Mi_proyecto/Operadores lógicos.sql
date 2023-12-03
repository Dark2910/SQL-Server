USE [CentroMedico];

/* AND */
SELECT *
FROM Paciente
WHERE nombre = 'Claudia' AND apellido = 'Lopez' AND idPaciente = '1004'

/* OR */
SELECT *
FROM Paciente
WHERE nombre = 'Claudia' OR apellido = 'Lopez' OR idPaciente = '1004'

/* IN */
SELECT *
FROM Turno
WHERE estado IN(1,2,3)

SELECT *
FROM Paciente
WHERE apellido IN('Lopez')

/* LIKE */
SELECT *
FROM Paciente
WHERE nombre LIKE 'C%';

SELECT *
FROM Paciente
WHERE nombre LIKE '%a';

/* NOT */
SELECT *
FROM Paciente
WHERE nombre NOT LIKE 'C%';

SELECT *
FROM Paciente
WHERE nombre NOT LIKE '%a';

SELECT *
FROM Paciente
WHERE apellido NOT IN('Lopez')

/* BETWEEN */
SELECT *
FROM Turno
WHERE fechaturno BETWEEN '2023-10-20' AND '2023-10-20 13:00:00'

SELECT *
FROM Turno
WHERE estado BETWEEN 2 AND 4