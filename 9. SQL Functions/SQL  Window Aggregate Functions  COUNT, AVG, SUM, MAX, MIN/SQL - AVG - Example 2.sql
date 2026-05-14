-- Find the average scores of customers
-- Additionally provide details such CustomerID and LastName

SELECT 
CustomerID,
LastName,
Score,
AVG(Score) OVER() AS Avg_score,
COALESCE(Score,0) AS New_score,
AVG(COALESCE(Score,0)) OVER() AS Avg_After_NULLV
FROM Sales.Customers