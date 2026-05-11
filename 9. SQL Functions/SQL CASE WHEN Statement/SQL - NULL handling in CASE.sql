-- Find the average scores of customers and treat Nulls as 0
-- Additionally provide details such CustomerID and LastName
SELECT 
	CustomerID,
	LastName,
	Score,
	AVG(Score) OVER () AS Avg_Score,
	CASE 
		WHEN Score IS NULL THEN 0
		ELSE Score
	END New_Score,
	-- 2nd scene
	AVG(CASE 
		WHEN Score IS NULL THEN 0
		ELSE Score
	END) OVER() AS New_Avg_Score
FROM Sales.Customers