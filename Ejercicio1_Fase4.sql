
-- Ejercicio 1 FASE 4 CONSULTAS
-- ¿Cuántas películas tienen una duración superior a 120 minutos?

SELECT Titulo as Peliculas_Largas
FROM PELICULAS
WHERE duración>120;

-- ¿Cuántas películas tienen contenido adulto?

SELECT Titulo as Contenido_adultos
FROM peliculas
WHERE contenido_adultos=1;

-- ¿Cuál es la película más antigua registrada en la base de datos
SELECT Titulo, Año_Lanzamiento
FROM peliculas
ORDER BY Año_lanzamiento
LIMIT 1;

-- Muestra el promedio de duración de las películas agrupado por género
SELECT Genero,AVG(duración) as Duracion_Promedio
FROM peliculas
GROUP BY Genero;

-- ¿Cuántas películas por año se han registrado en la base de datos? Ordena de mayor a menor.

SELECT Año_lanzamiento,COUNT(id)
FROM peliculas
GROUP BY Año_lanzamiento
ORDER BY Año_lanzamiento;

-- Cuál es el año con más películas en la base de datos

SELECT Año_lanzamiento, COUNT(id) as Total_Peliculas
FROM Peliculas
GROUP BY Año_lanzamiento
ORDER BY Total_Peliculas DESC
LIMIT 1;

-- Obtén un listado de todos los géneros y cuántas películas corresponden a cada uno

SELECT Genero, COUNT(id)
FROM peliculas
Group by Genero;

-- Muestra todas las películas cuyo título contenga la palabra "Godfather" (puedes usar cualquier palabra)

SELECT titulo
FROM peliculas
WHERE titulo LIKE ('%Godfather%');
