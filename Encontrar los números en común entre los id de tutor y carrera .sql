/**
  *    Encontrar los números en común entre
  *    los id de tutor y carrera;
  */

SELECT numrange(
	(SELECT min(tutor_id) FROM platzi.alumnos),
	(SELECT max(tutor_id) FROM platzi.alumnos)
) * numrange(
	(SELECT min(carrera_id) FROM platzi.alumnos),
	(SELECT max(carrera_id) FROM platzi.alumnos)
);

/**
  * Encontrar máximos
  */

-- Máximo absoluto de la tabla --
SELECT	fecha_incorporacion
FROM	platzi.alumnos
ORDER BY fecha_incorporacion DESC
LIMIT 1;

-- Intento por GROUP BY --
SELECT	carrera_id, fecha_incorporacion
FROM	platzi.alumnos
GROUP BY carrera_id, fecha_incorporacion
ORDER BY fecha_incorporacion DESC;

-- Funcion MAX --
SELECT	carrera_id, MAX(fecha_incorporacion)
FROM	platzi.alumnos
GROUP BY carrera_id
ORDER BY carrera_id;