USE [CentroMedico];

/* TOP */
SELECT *
FROM Paciente

SELECT TOP 2 idPaciente, nombre, apellido, fNacimiento
FROM Paciente


/* ORDER BY */
SELECT *
FROM Paciente

SELECT *
FROM Paciente
ORDER BY fNacimiento DESC

SELECT *
FROM Paciente
ORDER BY fNacimiento ASC


/* TOP - ORDER BY */
SELECT *
FROM Paciente

SELECT TOP 2 *
FROM Paciente
ORDER BY fNacimiento ASC

/* DISTINCT */
SELECT *
FROM Paciente

SELECT DISTINCT Paciente.idPais
FROM Paciente

/* GROUP BY */
SELECT *
FROM Paciente

SELECT idPais
FROM Paciente
GROUP BY Paciente.idPais

/* WHERE */
SELECT * 
FROM Paciente

SELECT * 
FROM Paciente
WHERE Paciente.idPais = 'COL'

SELECT * 
FROM Paciente
WHERE Paciente.apellido = 'Torres'

SELECT * 
FROM Paciente
WHERE Paciente.fNacimiento = '20190218'

SELECT * 
FROM Paciente
WHERE Paciente.fNacimiento = '2019-02-18'