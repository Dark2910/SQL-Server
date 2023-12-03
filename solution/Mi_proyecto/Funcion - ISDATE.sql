/*
	ISDATE()
	Se utiliza para verificar si una expresión puede interpretarse 
	como una fecha válida. ISDATE devuelve 1 si la expresión puede interpretarse 
	como una fecha válida, y 0 si no es una fecha válida.
*/
PRINT ISDATE('qwerty')
IF ISDATE('qwerty') = 0
	PRINT 'No es fecha'
ELSE
	PRINT 'Es fecha'

PRINT ISDATE('2019-Nov-12')
IF ISDATE('2019-Nov-12') = 1
	PRINT 'Es fecha'
ELSE
	PRINT 'No es fecha'

PRINT ISDATE(2019-12-03)

PRINT ISDATE(20191203)

PRINT ISDATE(GETDATE())

