USE [CentroMedico]
GO
/****** Object:  View [dbo].[PacientesTurnosPendientes]    Script Date: 2024-07-03 11:59:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
	Views

	Una vista es un objeto de base de datos que representa una consulta almacenada. 

	En lugar de almacenar la consulta físicamente en la base de datos, 
	una vista permite definir una consulta y darle un nombre. Esta consulta 
	puede consistir en una o más tablas y puede incluir operaciones 
	complejas. Al crear una vista, se pueden seleccionar ciertas columnas y 
	renombrarlas según sea necesario.

*/

CREATE VIEW [dbo].[PacientesTurnosPendientes] AS

SELECT P.idPaciente, P.nombre, P.apellido, T.idTurno, T.estado
FROM Paciente P
INNER JOIN TurnoPacienteMedico TPM ON TPM.idPaciente = P.idPaciente
INNER JOIN Turno T ON T.idTurno = TPM.idTurno
WHERE ISNULL(T.estado, 0) = 0
GO
/****** Object:  View [dbo].[vistaPrueba]    Script Date: 2024-07-03 11:59:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vistaPrueba]
AS
SELECT dbo.Paciente.idPaciente, dbo.Paciente.nombre, dbo.Paciente.apellido, dbo.Turno.estado
FROM     dbo.Paciente INNER JOIN
                  dbo.TurnoPacienteMedico ON dbo.Paciente.idPaciente = dbo.TurnoPacienteMedico.idPaciente INNER JOIN
                  dbo.Turno ON dbo.TurnoPacienteMedico.idTurno = dbo.Turno.idTurno
WHERE  (ISNULL(dbo.Turno.estado, 0) = 0)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Paciente"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Turno"
            Begin Extent = 
               Top = 60
               Left = 652
               Bottom = 223
               Right = 846
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TurnoPacienteMedico"
            Begin Extent = 
               Top = 99
               Left = 323
               Bottom = 240
               Right = 517
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3900
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaPrueba'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaPrueba'
GO
