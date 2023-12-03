USE[CentroMedico];

DECLARE @apellido varchar(50)
SET @apellido = 'Alc@nt@r@'

SELECT REPLACE(@apellido, '@', 'a') AS Apellido