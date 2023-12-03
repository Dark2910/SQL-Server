/*
	Obtener un listado de las iniciales de los pacientes, 
	leyendo los campos nombre y apellido, utilizando la función LEFT y 
	el operador + para concatenar las iniciales y obtener el resultado.

*/

USE[CentroMedico]

SELECT LEFT( nombre, 3) + LEFT( apellido, 3 ) AS Abreviatura
FROM Paciente
