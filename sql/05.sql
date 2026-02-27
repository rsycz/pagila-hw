/*
 * Count the total number of G rated films.
 * HINT:
 * Use the count() aggregation function and the rating column of the film table.
 */

SELECT count(*) AS total_films
FROM film
WHERE rating='G';
