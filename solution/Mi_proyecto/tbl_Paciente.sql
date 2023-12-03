USE CentroMedico;

CREATE TABLE Paciente(
idPaciente INT IDENTITY(1,1) NOT NULL,
nombre varchar(50),
apellido varchar(50),
fNacimiento date,
domicilio varchar(50),
idPais char(3),
telefono varchar(20),
email varchar(30),
observaciones varchar(1000)

CONSTRAINT PK_idPaciente PRIMARY KEY(idPaciente)
);

exec sp_columns 'Paciente';

--cambiar valore null a not null

alter table Paciente
	add nNombre varchar(50) not null,
		napellido varchar(50) not null,
		nfNacimiento date not null,
		ndomicilio varchar(50) not null,
		nemail varchar(30) not null;

update Paciente
	set nNombre = nombre,
		napellido = apellido,
		nfNacimiento = fNacimiento,
		ndomicilio = domicilio,
		nemail = email;

alter table Paciente
	drop column nombre,
				apellido,
				fNacimiento,
				domicilio,
				email;

EXEC sp_rename '[dbo].[Paciente].[nNombre]', 'nombre', 'COLUMN';
EXEC sp_rename '[dbo].[Paciente].[napellido]', 'apellido', 'COLUMN';
EXEC sp_rename '[dbo].[Paciente].[nfNacimiento]', 'fNacimiento', 'COLUMN';
EXEC sp_rename '[dbo].[Paciente].[ndomicilio]', 'domicilio', 'COLUMN';
EXEC sp_rename '[dbo].[Paciente].[nemail]', 'email', 'COLUMN';




