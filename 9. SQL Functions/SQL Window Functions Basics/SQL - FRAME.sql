SELECT 
	OrderID,
	OrderDate,
	OrderStatus,
	Sales,
-- for bottom results
SUM(Sales) OVER(PARTITION BY OrderStatus ORDER BY OrderDate 
ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING
) AS total_sales,

-- for preceding top result
SUM(Sales) OVER(PARTITION BY OrderStatus ORDER BY OrderDate 
ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
) AS total_sales_2,

-- also write this way for Preceding,same result short cut
SUM(Sales) OVER(PARTITION BY OrderStatus ORDER BY OrderDate 
ROWS  2 PRECEDING ) AS total_sales_3,

-- default Frame for ORDER BY
SUM(Sales) OVER(PARTITION BY OrderStatus ORDER BY OrderDate 
ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
) AS total_sales_4
FROM Sales.Orders