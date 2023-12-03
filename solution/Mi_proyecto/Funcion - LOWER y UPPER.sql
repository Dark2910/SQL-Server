USE[CentroMedico];

SELECT UPPER(nombre) AS nombre, LOWER(apellido) AS apellido
FROM Paciente


DECLARE @nombre varchar(20) = 'eDuArDo'

PRINT UPPER(LEFT(@nombre,1)) + LOWER(RIGHT(@nombre, LEN(@nombre) - 1))