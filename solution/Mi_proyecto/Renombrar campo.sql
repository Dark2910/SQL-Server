use[CentroMedico];

SELECT *
FROM Pago

EXEC sp_rename '[dbo].[Pago].[obs]','Observacion','COLUMN';
