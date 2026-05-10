-- find the average score of the customers
SELECT 
	CustomerID,
	Score,
	--null into 0
	COALESCE(Score,0) AS Score2,
	--without null row
	AVG(Score) OVER() AS Avg_score,
	-- with null row
	AVG(COALESCE (score,0)) OVER() AS Avg_score
FROM Sales.Customers