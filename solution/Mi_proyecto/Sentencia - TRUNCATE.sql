/*
	La sentencia TRUNCATE se utiliza para eliminar todos los registros de una tabla, pero 
	a diferencia de la sentencia delete, no genera registros de registro. Esto significa que 
	TRUNCATE es mas eficiente en terminos de uso de recursos y tiempo de ejecución, ya que no genera 
	eventos de registro para cada fila eliminada, pero tambien significa que no se pueden utilizar
	condiciones WHERE o JOIN para eliminar un subconjunto de registos.

*/

USE[CentroMedico];

CREATE TABLE Ejemplo(
	campo0 INT IDENTITY(1,1) PRIMARY KEY not null,
	campo1 INT,
	campo2 INT
)

INSERT INTO Ejemplo ( campo1, campo2 )
VALUES (0,1)
INSERT INTO Ejemplo ( campo1, campo2 )
VALUES (2,3)
INSERT INTO Ejemplo ( campo1, campo2 )
VALUES (4,5)
INSERT INTO Ejemplo ( campo1, campo2 )
VALUES (6,7)
INSERT INTO Ejemplo ( campo1, campo2 )
VALUES (8,9)

SELECT * FROM Ejemplo

TRUNCATE TABLE Ejemplo

DELETE FROM Ejemplo