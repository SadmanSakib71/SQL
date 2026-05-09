-- calculate the age of employes
SELECT 
	BirthDate,
	DATEDIFF(YEAR , BirthDate , GETDATE()) AS AGE_Year,
	DATEDIFF(MONTH , BirthDate , GETDATE()) AS AGE_Year
FROM Sales.Employees

-- find the average shipping duration in days of each month
SELECT
	MONTH(OrderDate) AS total_day,
	AVG(DATEDIFF (DAY, OrderDate,ShipDate)) As shipping_date 
FROM Sales.Orders
GROUP BY MONTH(OrderDate)

--find the day between the two orders
SELECT 
	OrderID,
	OrderDate As Current_order_date,
	LAG(OrderDate) OVER(ORDER BY OrderDATE) AS previous_order_date,
	DATEDIFF (day, LAG(OrderDate) OVER(ORDER BY OrderDATE), OrderDate) As NUM_Of_Days
FROM Sales.Orders