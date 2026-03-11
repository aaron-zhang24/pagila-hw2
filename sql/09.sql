/*
 * Count the number of movies that contain each type of special feature.
 * Order the results alphabetically be the special_feature.
 */

SELECT DISTINCT special_features, count(*) AS count
FROM (
    SELECT unnest(special_features) AS special_features
    FROM film
) AS f
GROUP BY special_features
ORDER BY special_features;
