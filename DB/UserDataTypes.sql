USE [CentroMedico]
GO
/****** Object:  UserDefinedDataType [dbo].[especialidad]    Script Date: 2024-07-03 12:03:20 ******/
CREATE TYPE [dbo].[especialidad] FROM [int] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[historia]    Script Date: 2024-07-03 12:03:20 ******/
CREATE TYPE [dbo].[historia] FROM [int] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[medico]    Script Date: 2024-07-03 12:03:20 ******/
CREATE TYPE [dbo].[medico] FROM [int] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[observaciones]    Script Date: 2024-07-03 12:03:20 ******/
CREATE TYPE [dbo].[observaciones] FROM [varchar](1000) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[paciente]    Script Date: 2024-07-03 12:03:20 ******/
CREATE TYPE [dbo].[paciente] FROM [int] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[turno]    Script Date: 2024-07-03 12:03:20 ******/
CREATE TYPE [dbo].[turno] FROM [int] NOT NULL
GO
