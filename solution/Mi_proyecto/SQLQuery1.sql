USE[CentroMedico]

create table Turno(
idTurno int primary key identity(1,1) not null,
fechaturno datetime null,
estado smallint null,
observacion varchar(300) null
);

create table TurnoPacienteMedico(
idTurno int NOT NULL,
idPaciente int NOT NULL,
idMedico int NOT NULL,

constraint PK_TurnoPacienteMedico PRIMARY KEY(
		idTurno,
		idPaciente,
		idMedico
	)
);

CREATE TABLE TurnoEstado(
idEstado smallint PRIMARY KEY NOT NULL,
descripcion varchar(50) NULL
)

CREATE TABLE Especialidad(
idEspecialidad INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Especialidad VARCHAR(30) NULL
)

CREATE TABLE Pago(
idPago INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
concepto TINYINT NOT NULL,
fecha DATETIME NOT NULL,
monto money NOT NULL,
estado TINYINT,
obs VARCHAR(1000)
)

CREATE TABLE PagoPacienteTurno(
idPago INT NOT NULL,
idPaciente INT NOT NULL,
idTurno INT NOT NULL

CONSTRAINT PK_PagoPacienteTurno PRIMARY KEY(
		idPago,
		idPaciente,
		idTurno
	)
)

CREATE TABLE Medico(
	idMedico	INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Nombre		VARCHAR(50) NULL,
	Apellido	VARCHAR(50) NULL
)

CREATE TABLE MedicoEspecialidad(
	idMedico		INT NOT NULL,
	idEspecialidad	INT NOT NULL,
	Descripcion		INT NOT NULL

	CONSTRAINT PK_MedicoEspecialidad PRIMARY KEY(
		idMedico, idEspecialidad
	)
)

CREATE TABLE Concepto(
	idConcepto		TINYINT PRIMARY KEY IDENTITY(1,1) NOT NULL, 
	descripcion		VARCHAR(100)
)

CREATE TABLE PacienteInfo(
	idPaciente paciente,
	diabetico BIT,
	implantes BIT,

	PRIMARY KEY(idPaciente)
) 

exec sp_columns 'Paciente';

SELECT  *
FROM Paciente

INSERT INTO Paciente(DNI, nombre, apellido, fNacimiento, domicilio, idPais, telefono, email, observaciones)
VALUES 
('33578126', 'José', 'Perez', '1999-04-15', 'Lavalle 2563', 'COL', NULL, 'jose@gmail.com', 'paciente derivado'),
('20485781', 'Marcela', 'Torres', '1978-02-15', 'Belgrano 1563', 'MEX', '5548312798', 'marcela@gmail.com', '')

SELECT *
FROM TurnoEstado

INSERT INTO TurnoEstado(idEstado, descripcion)
VALUES
(0,'Pendiente'),
(1,'Realizado'),
(2,'Cancelado'),
(3,'Rechazado'),
(4,'Postergado'),
(5,'Anulado'),
(6,'Derivado')

SELECT *
FROM Turno

INSERT INTO Turno(fechaturno, estado, observacion)
VALUES ('2023-03-15', 0, 'Paciente en ayunas')

SELECT idTurno, estado, observacion, fechaturno
FROM Turno
ORDER BY idTurno DESC


SELECT * 
FROM TurnoPacienteMedico

INSERT INTO TurnoPacienteMedico(idTurno, idPaciente,idMedico)
VALUES (2, 3, 1)


