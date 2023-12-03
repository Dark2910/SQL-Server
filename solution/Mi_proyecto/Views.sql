/*
	Views

	Una vista es un objeto de base de datos que representa una consulta almacenada. 

	En lugar de almacenar la consulta físicamente en la base de datos, 
	una vista permite definir una consulta y darle un nombre. Esta consulta 
	puede consistir en una o más tablas y puede incluir operaciones 
	complejas. Al crear una vista, se pueden seleccionar ciertas columnas y 
	renombrarlas según sea necesario.

*/

CREATE VIEW PacientesTurnosPendientes AS

SELECT P.idPaciente, P.nombre, P.apellido, T.idTurno, T.estado
FROM Paciente P
INNER JOIN TurnoPacienteMedico TPM ON TPM.idPaciente = P.idPaciente
INNER JOIN Turno T ON T.idTurno = TPM.idTurno
WHERE ISNULL(T.estado, 0) = 0

/*
	SELECT * FROM PacientesTurnosPendientes
	SELECT * FROM vistaPrueba
*/
