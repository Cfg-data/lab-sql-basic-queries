-- 1. Display all available tables
SHOW TABLES IN sakila;

-- 2. Retrieve all data from actor, film, and customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3. Retrieve specific columns
SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;

-- 4. Retrieve unique release years
SELECT DISTINCT release_year FROM film;

-- 5. Counting records
SELECT COUNT(*) AS number_of_stores FROM store;
SELECT COUNT(*) AS number_of_employees FROM staff;
SELECT COUNT(*) AS films_available_for_rent FROM inventory WHERE inventory_id NOT IN (SELECT inventory_id FROM rental WHERE return_date IS NOT NULL);
SELECT COUNT(*) AS films_rented FROM rental WHERE return_date IS NOT NULL;
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names FROM actor;

-- 6. Retrieve the 10 longest films
SELECT title, length FROM film ORDER BY length DESC LIMIT 10;

-- 7. Use filtering techniques
SELECT * FROM actor WHERE first_name = 'SCARLETT';
SELECT title, length FROM film WHERE title LIKE '%ARMAGEDDON%' AND length > 100;
SELECT COUNT(*) AS films_with_behind_the_scenes FROM film WHERE description LIKE '%Behind the Scenes%';
