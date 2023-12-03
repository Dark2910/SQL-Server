/*
	INNER JOIN:
	- INNER JOIN se utiliza para combinar filas de dos o m�s tablas 
		en base a una condici�n de coincidencia entre las tablas.
	- La condici�n de coincidencia se especifica en la cl�usula ON.
	- INNER JOIN devuelve solo las filas que tienen coincidencias 
		en ambas tablas.

	UNION:
	- Se utiliza para combinar el conjunto de resultados de dos o m�s 
		consultas en una �nica lista de resultados.
	- Las columnas en las consultas involucradas en UNION deben 
		coincidir en nombre y tipo de datos.
	- UNION elimina autom�ticamente duplicados en el conjunto de 
		resultados final.

*/
USE[CentroMedico];

SELECT *
FROM Paciente P
INNER JOIN TurnoPacienteMedico TPM
ON TPM.idPaciente = P.idPaciente

SELECT *
FROM Paciente P
LEFT JOIN TurnoPacienteMedico TPM
ON TPM.idPaciente = P.idPaciente

SELECT *
FROM Paciente P
RIGHT JOIN TurnoPacienteMedico TPM
ON TPM.idPaciente = P.idPaciente

------------------------------

SELECT idTurno FROM Turno
UNION
SELECT idPaciente FROM Paciente

/*
	UNION ALL no elimina las repeticiones de registros
*/

SELECT idTurno FROM Turno
UNION ALL
SELECT idPaciente FROM Paciente