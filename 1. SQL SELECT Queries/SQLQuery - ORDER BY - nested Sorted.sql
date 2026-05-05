/* result by country then highest score */
SELECT * 
FROM customers
/* here data sorte by country name first
if score is the first postion it will sorted the value first then name */
ORDER BY country ASC, score DESC