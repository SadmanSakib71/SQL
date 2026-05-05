-- find the total score for each country
SELECT 
-- AS for the new column name for this query
country,
SUM(score) AS total_score,
COUNT(id) AS total_customer
FROM customers
GROUP BY country