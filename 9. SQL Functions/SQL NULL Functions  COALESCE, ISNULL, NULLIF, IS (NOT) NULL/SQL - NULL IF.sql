-- Find the sales price for each order by dividing sales by quantity
SELECT 
	Sales,
	Quantity,
	NULLIF(Quantity, 0) AS new_Quantitiy,
	--if divided by 0 then it will be error
	Sales/NULLIF(Quantity, 0) AS price
	
FROM Sales.Orders