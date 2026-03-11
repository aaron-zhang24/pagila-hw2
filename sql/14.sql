/*
 * Create a report that shows the total revenue per month and year.
 *
 * HINT:
 * This query is very similar to the previous problem,
 * but requires an additional JOIN.
 */

SELECT
    EXTRACT(year FROM rental_date) AS "Year",
    EXTRACT(month FROM rental_date) AS "Month",
    SUM(amount) AS "Total Revenue"
FROM payment
JOIN rental USING(rental_id)  
GROUP BY ROLLUP ("Year", "Month")
ORDER BY "Year", "Month";
