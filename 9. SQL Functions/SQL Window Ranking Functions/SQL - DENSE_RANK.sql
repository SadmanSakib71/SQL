-- Rank the orders based on their sales from highest to lowest

SELECT 
	OrderID,
	OrderDate,
	Sales,
	ROW_NUMBER() OVER(ORDER BY Sales DESC) AS Sales_Rank_Row,
	RANK() OVER(ORDER BY Sales DESC) AS Sales_Rank,
	DENSE_RANK() OVER (ORDER BY Sales DESC) AS Dense_Rank
FROM Sales.Orders