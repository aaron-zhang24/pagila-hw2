/*
 * This problem is the same as 07.sql,
 * but instead of using the NOT IN operator, you are to use a LEFT JOIN.
 */

SELECT DISTINCT title
FROM inventory
JOIN film USING(film_id)
LEFT JOIN (
    SELECT film_id
    FROM inventory
    JOIN rental USING(inventory_id)
    JOIN customer USING(customer_id)
    JOIN address USING(address_id)
    JOIN city USING(city_id)
    JOIN country USING(country_id)
    WHERE country = 'United States'
) AS us_films USING(film_id)
WHERE us_films.film_id IS NULL
ORDER BY title;

/*JOIN rental USING(inventory_id)
LEFT JOIN customer USING(customer_id)
LEFT JOIN address USING(address_id)
LEFT JOIN city USING(city_id)
LEFT JOIN country ON city.country_id = country.country_id
    AND country = 'United States'
WHERE country.country_id IS NULL
ORDER BY title;
*/
