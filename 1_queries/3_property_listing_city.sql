-- SELECT * FROM (
--   SELECT properties.*, AVG(property_reviews.rating) as average_rating
--   FROM properties
--   JOIN property_reviews ON properties.id = property_reviews.property_id
--   WHERE city LIKE '%ancouver%'
--   GROUP BY properties.id
-- ) as sub_table
-- WHERE average_rating >= 4
-- ORDER BY cost_per_night; 

SELECT properties.*, AVG(property_reviews.rating) as average_rating
FROM properties
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE city LIKE '%ancouver%'
GROUP BY properties.id
HAVING AVG(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;