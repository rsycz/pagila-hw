/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

SELECT c.name AS category, count(f.film_id) AS number_of_english_films
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
JOIN film f ON fc.film_id = f.film_id
JOIN language l ON f.language_id = l.language_ID
WHERE lower(l.name) = 'english'
GROUP BY c.category_id, c.name;
