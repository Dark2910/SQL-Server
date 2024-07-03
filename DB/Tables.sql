USE [CentroMedico]
GO
/****** Object:  Table [dbo].[Concepto]    Script Date: 2024-07-03 11:58:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Concepto](
	[idConcepto] [tinyint] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idConcepto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ejemplo]    Script Date: 2024-07-03 11:58:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ejemplo](
	[campo0] [int] IDENTITY(1,1) NOT NULL,
	[campo1] [int] NULL,
	[campo2] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[campo0] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especialidad]    Script Date: 2024-07-03 11:58:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidad](
	[idEspecialidad] [dbo].[especialidad] IDENTITY(1,1) NOT NULL,
	[Especialidad] [varchar](80) NULL,
 CONSTRAINT [PK__Especial__E8AB1600F01B16EF] PRIMARY KEY CLUSTERED 
(
	[idEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Historia]    Script Date: 2024-07-03 11:58:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Historia](
	[idHistoria] [dbo].[historia] IDENTITY(1,1) NOT NULL,
	[fechaHistoria] [datetime] NULL,
	[observacion] [dbo].[observaciones] NULL,
	[fechaAlta] [datetime] NULL,
 CONSTRAINT [PK_idHistoria] PRIMARY KEY CLUSTERED 
(
	[idHistoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoriaPacienteMedico]    Script Date: 2024-07-03 11:58:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoriaPacienteMedico](
	[idHistoria] [dbo].[historia] NOT NULL,
	[idPaciente] [dbo].[paciente] NOT NULL,
	[idMedico] [dbo].[medico] NOT NULL,
 CONSTRAINT [PK_HistoriaPacienteMedico] PRIMARY KEY CLUSTERED 
(
	[idHistoria] ASC,
	[idPaciente] ASC,
	[idMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medico]    Script Date: 2024-07-03 11:58:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medico](
	[idMedico] [dbo].[medico] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Medico__4E03DEBAC023B7A8] PRIMARY KEY CLUSTERED 
(
	[idMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicoEspecialidad]    Script Date: 2024-07-03 11:58:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicoEspecialidad](
	[idMedico] [dbo].[medico] NOT NULL,
	[idEspecialidad] [dbo].[especialidad] NOT NULL,
	[Descripcion] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_MedicoEspecialidad] PRIMARY KEY CLUSTERED 
(
	[idMedico] ASC,
	[idEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 2024-07-03 11:58:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[idPaciente] [dbo].[paciente] IDENTITY(1,1) NOT NULL,
	[dni] [varchar](20) NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[fNacimiento] [date] NOT NULL,
	[domicilio] [varchar](50) NOT NULL,
	[idPais] [char](3) NULL,
	[telefono] [varchar](20) NULL,
	[email] [varchar](30) NOT NULL,
	[observaciones] [dbo].[observaciones] NULL,
 CONSTRAINT [PK__Paciente__F48A08F29A3E762E] PRIMARY KEY CLUSTERED 
(
	[idPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteInfo]    Script Date: 2024-07-03 11:58:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteInfo](
	[idPaciente] [dbo].[paciente] NOT NULL,
	[diabetico] [bit] NULL,
	[implantes] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacienteLog]    Script Date: 2024-07-03 11:58:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacienteLog](
	[idPaciente] [int] NOT NULL,
	[idPais] [char](3) NULL,
	[fechaAlta] [datetime] NULL,
	[fechaModificacion] [datetime] NULL,
	[fechaEliminacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 2024-07-03 11:58:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[idPago] [int] IDENTITY(1,1) NOT NULL,
	[concepto] [tinyint] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[monto] [money] NOT NULL,
	[estado] [tinyint] NULL,
	[Observacion] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[idPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PagoPacienteTurno]    Script Date: 2024-07-03 11:58:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagoPacienteTurno](
	[idPago] [int] NOT NULL,
	[idPaciente] [dbo].[paciente] NOT NULL,
	[idTurno] [int] NOT NULL,
 CONSTRAINT [PK_PagoPacienteTurno] PRIMARY KEY CLUSTERED 
(
	[idPago] ASC,
	[idPaciente] ASC,
	[idTurno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 2024-07-03 11:58:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[idPais] [char](3) NOT NULL,
	[Pais] [varchar](30) NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[idPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turno]    Script Date: 2024-07-03 11:58:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turno](
	[idTurno] [dbo].[turno] IDENTITY(1,1) NOT NULL,
	[fechaturno] [datetime] NULL,
	[estado] [smallint] NULL,
	[observacion] [dbo].[observaciones] NULL,
 CONSTRAINT [PK__Turno__AA068B01401B8090] PRIMARY KEY CLUSTERED 
(
	[idTurno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TurnoEstado]    Script Date: 2024-07-03 11:58:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TurnoEstado](
	[idEstado] [smallint] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK__TurnoEst__62EA894A7696AA7E] PRIMARY KEY CLUSTERED 
(
	[idEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TurnoPacienteMedico]    Script Date: 2024-07-03 11:58:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TurnoPacienteMedico](
	[idTurno] [dbo].[turno] NOT NULL,
	[idPaciente] [dbo].[paciente] NOT NULL,
	[idMedico] [dbo].[medico] NOT NULL,
 CONSTRAINT [PK_TurnoPacienteMedico] PRIMARY KEY CLUSTERED 
(
	[idTurno] ASC,
	[idPaciente] ASC,
	[idMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HistoriaPacienteMedico]  WITH CHECK ADD  CONSTRAINT [FK_HistoriaPacienteMedico_Historia] FOREIGN KEY([idHistoria])
REFERENCES [dbo].[Historia] ([idHistoria])
GO
ALTER TABLE [dbo].[HistoriaPacienteMedico] CHECK CONSTRAINT [FK_HistoriaPacienteMedico_Historia]
GO
ALTER TABLE [dbo].[HistoriaPacienteMedico]  WITH CHECK ADD  CONSTRAINT [FK_HistoriaPacienteMedico_Medico] FOREIGN KEY([idMedico])
REFERENCES [dbo].[Medico] ([idMedico])
GO
ALTER TABLE [dbo].[HistoriaPacienteMedico] CHECK CONSTRAINT [FK_HistoriaPacienteMedico_Medico]
GO
ALTER TABLE [dbo].[HistoriaPacienteMedico]  WITH CHECK ADD  CONSTRAINT [FK_HistoriaPacienteMedico_Paciente] FOREIGN KEY([idPaciente])
REFERENCES [dbo].[Paciente] ([idPaciente])
GO
ALTER TABLE [dbo].[HistoriaPacienteMedico] CHECK CONSTRAINT [FK_HistoriaPacienteMedico_Paciente]
GO
ALTER TABLE [dbo].[MedicoEspecialidad]  WITH CHECK ADD  CONSTRAINT [FK_MedicoEspecialidad_Especialidad] FOREIGN KEY([idEspecialidad])
REFERENCES [dbo].[Especialidad] ([idEspecialidad])
GO
ALTER TABLE [dbo].[MedicoEspecialidad] CHECK CONSTRAINT [FK_MedicoEspecialidad_Especialidad]
GO
ALTER TABLE [dbo].[MedicoEspecialidad]  WITH CHECK ADD  CONSTRAINT [FK_MedicoEspecialidad_Medico] FOREIGN KEY([idMedico])
REFERENCES [dbo].[Medico] ([idMedico])
GO
ALTER TABLE [dbo].[MedicoEspecialidad] CHECK CONSTRAINT [FK_MedicoEspecialidad_Medico]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Pais] FOREIGN KEY([idPais])
REFERENCES [dbo].[Pais] ([idPais])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_Pais]
GO
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Concepto] FOREIGN KEY([concepto])
REFERENCES [dbo].[Concepto] ([idConcepto])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_Concepto]
GO
ALTER TABLE [dbo].[PagoPacienteTurno]  WITH CHECK ADD  CONSTRAINT [FK_PagoPacienteTurno_Paciente] FOREIGN KEY([idPaciente])
REFERENCES [dbo].[Paciente] ([idPaciente])
GO
ALTER TABLE [dbo].[PagoPacienteTurno] CHECK CONSTRAINT [FK_PagoPacienteTurno_Paciente]
GO
ALTER TABLE [dbo].[PagoPacienteTurno]  WITH CHECK ADD  CONSTRAINT [FK_PagoPacienteTurno_Pago] FOREIGN KEY([idPago])
REFERENCES [dbo].[Pago] ([idPago])
GO
ALTER TABLE [dbo].[PagoPacienteTurno] CHECK CONSTRAINT [FK_PagoPacienteTurno_Pago]
GO
ALTER TABLE [dbo].[PagoPacienteTurno]  WITH CHECK ADD  CONSTRAINT [FK_PagoPacienteTurno_Turno] FOREIGN KEY([idTurno])
REFERENCES [dbo].[Turno] ([idTurno])
GO
ALTER TABLE [dbo].[PagoPacienteTurno] CHECK CONSTRAINT [FK_PagoPacienteTurno_Turno]
GO
ALTER TABLE [dbo].[Turno]  WITH CHECK ADD  CONSTRAINT [FK_Turno_TurnoEstado] FOREIGN KEY([estado])
REFERENCES [dbo].[TurnoEstado] ([idEstado])
GO
ALTER TABLE [dbo].[Turno] CHECK CONSTRAINT [FK_Turno_TurnoEstado]
GO
ALTER TABLE [dbo].[TurnoPacienteMedico]  WITH CHECK ADD  CONSTRAINT [FK_TurnoPacienteMedico_Medico] FOREIGN KEY([idMedico])
REFERENCES [dbo].[Medico] ([idMedico])
GO
ALTER TABLE [dbo].[TurnoPacienteMedico] CHECK CONSTRAINT [FK_TurnoPacienteMedico_Medico]
GO
ALTER TABLE [dbo].[TurnoPacienteMedico]  WITH CHECK ADD  CONSTRAINT [FK_TurnoPacienteMedico_Paciente] FOREIGN KEY([idPaciente])
REFERENCES [dbo].[Paciente] ([idPaciente])
GO
ALTER TABLE [dbo].[TurnoPacienteMedico] CHECK CONSTRAINT [FK_TurnoPacienteMedico_Paciente]
GO
ALTER TABLE [dbo].[TurnoPacienteMedico]  WITH CHECK ADD  CONSTRAINT [FK_TurnoPacienteMedico_Turno] FOREIGN KEY([idTurno])
REFERENCES [dbo].[Turno] ([idTurno])
GO
ALTER TABLE [dbo].[TurnoPacienteMedico] CHECK CONSTRAINT [FK_TurnoPacienteMedico_Turno]
GO
