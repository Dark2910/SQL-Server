
CREATE VIEW view_MedicosEspecialidades AS

SELECT M.idMedico, M.Nombre, M.Apellido, ME.idEspecialidad, ME.Descripcion 
FROM Medico M
INNER JOIN MedicoEspecialidad ME ON Me.idMedico = M.idMedico

SELECT * FROM view_MedicosEspecialidades