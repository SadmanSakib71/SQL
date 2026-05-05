/* find the average score for the each country
considering only customers with a score not equal to 0
and return only those country with an average greaten than 430
*/

SELECT 
country,
AVG(score) AS average_score
FROM customers
-- before aggrigation
WHERE score != 0
GROUP BY country
-- after aggrigation
HAVING AVG(score) > 430