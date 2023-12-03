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

SELECT COUNT(idPago) AS 'N�mero de registros'
FROM Pago

/* HAVING */

/**
* WHERE: Se utiliza en la cl�usula SELECT o FROM para filtrar filas antes de que se realicen las operaciones de agregaci�n 
* como GROUP BY o funciones de agregaci�n (por ejemplo, SUM, COUNT, AVG) en una consulta.
*
* HAVING: Se utiliza en combinaci�n con la cl�usula GROUP BY para filtrar los resultados de agregaci�n 
* despu�s de que se hayan realizado las operaciones de agregaci�n. 
**/
SELECT *
FROM Turno

SELECT estado
FROM Turno
GROUP BY estado 
HAVING COUNT(estado) > 1