-- Ejercicio 2. Base de Datos Sakila

-- selecciona todos los nombres de las películas sin que aparezcan duplicados.

SELECT DISTINCT title
FROM film;

-- Muestra los nombres de todas las películas que tengan una clasificación de "PG-13".

SELECT title,rating
FROM film
WHERE rating LIKE 'PG-13';


-- Encuentra el título y la descripción de todas las películas que contengan la palabra "amazing" en su descripción.

SELECT title,description
FROM film
WHERE description LIKE '%amazing%';

-- Encuentra el título de todas las películas que tengan una duración mayor a 120 minutos.

SELECT title as Peliculas_larga_duracion
FROM film
WHERE length>120;

-- Recupera los nombres de todos los actores.
SELECT first_name,last_name
FROM actor;

-- Encuentra el nombre y apellido de los actores que tengan "Gibson" en su apellido.

SELECT first_name,last_name
FROM actor
WHERE last_name LIKE '%Gibson%';


-- Encuentra los nombres de los actores que tengan un actor_id entre 10 y 20.

SELECT first_name,last_name,actor_id
FROM actor 
WHERE actor_id>9
LIMIT 11;

-- Encuentra el título de las películas en la tabla film que no sean ni "R" ni "PG-13" en cuanto a su clasificación.

SELECT title, rating
FROM film
WHERE rating NOT LIKE 'R' AND rating NOT LIKE 'PG-13';

-- Encuentra la cantidad total de películas en cada clasificación de la tabla film y muestra la clasificación junto con el recuento.
SELECT rating, COUNT(film_id)
FROM film
GROUP BY rating;

-- Encuentra la cantidad total de películas alquiladas por cada cliente y muestra el ID del cliente, su nombre y apellido junto con la cantidad de películas alquiladas.
SELECT customer.customer_id,customer.first_name,customer.last_name,count(rental.rental_id) as Numero_alquileres
FROM customer
INNER JOIN rental ON customer.customer_id=rental.customer_id
GROUP BY customer_id;

-- Encuentra la cantidad total de películas alquiladas por categoría y muestra el nombre de la categoría junto con el recuento de alquileres.
SELECT 
    c.name AS categoria,
    COUNT(r.rental_id) AS total_alquileres
FROM category c
INNER JOIN film_category fc ON c.category_id = fc.category_id
INNER JOIN film f ON fc.film_id = f.film_id
INNER JOIN inventory i ON f.film_id = i.film_id
INNER JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY c.name
ORDER BY total_alquileres DESC;

-- Encuentra el promedio de duración de las películas para cada clasificación de la tabla film y muestra la clasificación junto con el promedio de duración.
SELECT rating,AVG(length) AS Duracion
FROM film
GROUP BY rating;

-- Encuentra el nombre y apellido de los actores que aparecen en la película con title "Indian Love".
SELECT 
    a.first_name AS nombre,
    a.last_name AS apellido
FROM actor a
INNER JOIN film_actor fa ON a.actor_id = fa.actor_id
INNER JOIN film f ON fa.film_id = f.film_id
WHERE f.title = 'Indian Love';

-- Muestra el título de todas las películas que contengan la palabra "dog" o "cat" en su descripción. 

SELECT title
FROM film
WHERE description LIKE '%dog%' 
   OR description LIKE '%cat%';
   
   
-- Encuentra el título de todas las películas que fueron lanzadas entre el año 2005 y 2010.

SELECT title
FROM film
WHERE release_year BETWEEN 2005 AND 2010;
