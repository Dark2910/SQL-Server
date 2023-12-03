CREATE FUNCTION suma( @n1 int, @n2 int )
RETURNS INT
AS
BEGIN
	DECLARE @total INT
	SET @total = @n1 + @n2
	return @total

END

SELECT dbo.suma(5,1000) AS Total