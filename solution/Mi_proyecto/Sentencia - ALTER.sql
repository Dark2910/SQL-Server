USE[CentroMedico];

SELECT * FROM Paciente

ALTER TABLE Paciente ADD estado smallint
ALTER TABLE Paciente ALTER COLUMN estado bit
ALTER TABLE Paciente DROP COLUMN estado

ALTER TABLE Paciente ADD FOREIGN KEY(idPais) REFERENCES Pais(idPais);
ALTER TABLE HistoriaPacienteMedico ADD FOREIGN KEY(idPaciente) REFERENCES Paciente(idPaciente);