-- Rank each order based on their sales from highest to lowest
-- Additionally provide details such order Id, order date

SELECT 
	OrderID,
	OrderDate,
	Sales,
RANK() OVER(ORDER BY Sales DESC) AS RANK
FROM Sales.Orders