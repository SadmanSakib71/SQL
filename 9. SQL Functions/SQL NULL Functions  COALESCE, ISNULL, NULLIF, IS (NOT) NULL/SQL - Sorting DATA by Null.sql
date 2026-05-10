-- Sort the customers from lowest to highest scores,
-- with nulls appearing last
SELECT 
	Score,
	COALESCE(Score, 99999999999) AS New_Score
FROM Sales.Customers
ORDER BY COALESCE(Score, 99999999999)