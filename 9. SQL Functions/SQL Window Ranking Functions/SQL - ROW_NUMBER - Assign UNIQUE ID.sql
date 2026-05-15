-- Assign unique IDs to the rows of the 'Orders Archive'

SELECT 
	ROW_NUMBER() OVER(ORDER BY OrderID) Unique_Id,
	*
FROM Sales.OrdersArchive