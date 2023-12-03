/*
	Las tablas temporales se eliminan automáticamente al acabar la sesión o 
	el script donde fueron definidas

	Las tablas temporales son útiles en situaciones donde necesitas 
	almacenar datos temporalmente y de manera privada para una sesión o 
	globalmente para todas las sesiones. Sin embargo, debes tener cuidado 
	al utilizar tablas temporales, ya que pueden afectar el rendimiento si 
	se usan indiscriminadamente, y debes asegurarte de eliminarlas 
	cuando ya no sean necesarias para liberar recursos.


	Tablas Temporales Locales (#):
	
	Las tablas temporales locales se crean con un nombre que comienza con 
	un signo de almohadilla (#).
	Estas tablas son visibles solo en el contexto de la sesión de usuario 
	que las crea y se eliminan automáticamente cuando la sesión se cierra.

	Tablas Temporales Globales (##):

	Las tablas temporales globales se crean con un nombre que comienza con 
	dos signos de almohadilla (##).
	Estas tablas son visibles para todas las sesiones y persisten 
	hasta que se eliminen explícitamente o hasta que se cierre la instancia 
	de SQL Server.

*/

/* Tabla temporal en memoria */
DECLARE @tablaTemporal Table(
	idTabla INT IDENTITY(1,1),
	Pais VARCHAR(50),

	PRIMARY KEY(idTabla)
)

INSERT INTO @tablaTemporal(Pais) VALUES('Mexico')
INSERT INTO @tablaTemporal(Pais) VALUES('Canada')
INSERT INTO @tablaTemporal(Pais) VALUES('Egipto')
INSERT INTO @tablaTemporal(Pais) VALUES('Japon')
INSERT INTO @tablaTemporal(Pais) VALUES('Brasil')
INSERT INTO @tablaTemporal(Pais) VALUES('Chile')

SELECT Tt.Pais
FROM @tablaTemporal Tt
WHERE idTabla = 4

/* Tabla temporal física */
CREATE TABLE #AutosTemporal(
	idAuto INT IDENTITY(1,1) PRIMARY KEY,
	modelo VARCHAR(25)
)

INSERT INTO #AutosTemporal(modelo) VALUES('RX-7')
INSERT INTO #AutosTemporal(modelo) VALUES('Skyline R34 NISMO')
INSERT INTO #AutosTemporal(modelo) VALUES('Supra')
INSERT INTO #AutosTemporal(modelo) VALUES('Lancer evo VI')
INSERT INTO #AutosTemporal(modelo) VALUES('Corolla AE86')

SELECT modelo 
FROM #AutosTemporal

DROP TABLE #AutosTemporal

--------------------------------------------------------------------

CREATE TABLE ##Audifonos(
	idAudifono INT IDENTITY(1,1) PRIMARY KEY,
	modelo VARCHAR(25)
)

INSERT INTO ##Audifonos(modelo) VALUES('ATH-M50X')
INSERT INTO ##Audifonos(modelo) VALUES('BOSE QC35 ii')
INSERT INTO ##Audifonos(modelo) VALUES('SHENNHEISER HD599')
INSERT INTO ##Audifonos(modelo) VALUES('BEATS PRO BY DR DRE')

SELECT modelo 
FROM ##Audifonos
WHERE idAudifono = 1

DROP TABLE ##Audifonos