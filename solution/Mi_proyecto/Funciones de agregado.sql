USE[CentroMedico];

/* MAX - MIN */
SELECT MAX(monto) AS 'Mont MAX'
FROM Pago

SELECT MIN(monto) AS 'Monto MIN'
FROM Pago


/* SUM */
SELECT SUM(monto) AS 'monto total'
FROM Pago

SELECT SUM(monto + 20) AS 'monto total'
FROM Pago

SELECT SUM(monto) + 20 AS 'monto total'
FROM Pago

/* AVG */
SELECT AVG(monto) AS 'monto promedio'
FROM Pago

SELECT AVG(monto + 20)  AS 'monto promedio'
FROM Pago

SELECT AVG(monto) + 20  AS 'monto promedio'
FROM Pago

/* COUNT */
SELECT *
FROM Pago

SELECT COUNT(idPago) AS 'Número de registros'
FROM Pago

/* HAVING */

/**
* WHERE: Se utiliza en la cláusula SELECT o FROM para filtrar filas antes de que se realicen las operaciones de agregación 
* como GROUP BY o funciones de agregación (por ejemplo, SUM, COUNT, AVG) en una consulta.
*
* HAVING: Se utiliza en combinación con la cláusula GROUP BY para filtrar los resultados de agregación 
* después de que se hayan realizado las operaciones de agregación. 
**/
SELECT *
FROM Turno

SELECT estado
FROM Turno
GROUP BY estado 
HAVING COUNT(estado) > 1