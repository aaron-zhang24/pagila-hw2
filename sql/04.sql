/*
 * Select the titles of all films that the customer with customer_id=1 has rented more than 1 time.
 *
 * HINT:
 * It's possible to solve this problem both with and without subqueries.
 */

SELECT title
FROM customer
JOIN rental USING(customer_id)
JOIN inventory USING(inventory_id)
JOIN film USING(film_id)
WHERE customer_id = 1
GROUP BY title
HAVING count(rental_id) > 1
ORDER BY title;
