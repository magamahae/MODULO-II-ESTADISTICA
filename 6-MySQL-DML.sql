USE henry;

DELETE FROM cohorte
WHERE idCohorte =1245 ;

DELETE FROM cohorte
WHERE idcohorte= 1246;

SELECT * FROM cohorte;

UPDATE cohorte 
SET fechaInicio = '2022-05-16'
WHERE idCohorte = 1243;

UPDATE alumno
SET apellido = 'Ramirez'
WHERE idAlumno = 165;

SELECT * 
FROM alumno
WHERE idCohorte = 1243;

SELECT DISTINCT idInstructor
FROM cohorte
WHERE idCarrera = 1;

SELECT *
FROM instructor
WHERE idInstructor<=5;

SELECT DISTINCT i.idInstructor, i.nombre, i.apellido
FROM instructor i
JOIN cohorte c ON (c.idInstructor = i.idInstructor)
JOIN carrera ca ON (c.idCarrera = ca.idCarrera)
WHERE ca.nombre = 'Full Stack Developer';

SELECT * FROM  alumno
WHERE idCohorte = 1235;

SELECT * FROM  alumno
WHERE idCohorte = 1235 AND YEAR(fechaIngreso)=2019;


SELECT DISTINCT a.idAlumno, a.nombre, a.apellido, ca.nombre
FROM alumno a
JOIN cohorte co ON(co.idCohorte =a.idCohorte )
JOIN carrera ca ON(co.idCarrera=ca.idCarrera);

SELECT alumno.nombre AS nombre_alumno, carrera.nombre AS nombre_carrera
FROM alumno
INNER JOIN cohorte ON alumno.idCohorte = cohorte.idCohorte
INNER JOIN carrera ON cohorte.idCarrera = carrera.idCarrera
WHERE carrera.nombre LIKE '%Full %';

SELECT a.nombre, a.apellido, a.fechaNacimiento, ca.nombre
FROM alumno a
INNER JOIN cohorte co ON co.idCohorte=a.idCohorte
INNER JOIN carrera ca ON co.idCarrera = ca.idCarrera
WHERE  ca.idCarrera = 3;  

SELECT a.nombre, a.apellido, a.fechaNacimiento, ca.nombre
FROM alumno a
INNER JOIN cohorte co ON co.idCohorte=a.idCohorte
INNER JOIN carrera ca ON co.idCarrera = ca.idCarrera
WHERE  ca.idCarrera != 2 AND ca.idCarrera != 1  