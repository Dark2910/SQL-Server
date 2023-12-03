
SELECT idPaciente, nombre, apellido, fNacimiento,
	(SELECT ps.Pais
	 FROM Pais ps
	 WHERE ps.idPais = pc.idPais
	) AS Pais
FROM Paciente pc
WHERE idPaciente = 1