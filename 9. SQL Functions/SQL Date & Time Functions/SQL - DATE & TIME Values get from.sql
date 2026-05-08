SELECT 
	OrderID,
	OrderDate,
	--date from table
	CreationTime,
	-- hardcoded date
	'2025-04-10' AS Hardcoded,
	-- by function
	GETDATE() AS Today

FROM Sales.Orders