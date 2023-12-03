
DECLARE @nombre VARCHAR(20) = '   Javier   '
DECLARE @apellido VARCHAR(20) = '   Lopez   '

SELECT CONCAT(LTRIM(RTRIM(@nombre)), ' ', LTRIM(RTRIM(@apellido)))