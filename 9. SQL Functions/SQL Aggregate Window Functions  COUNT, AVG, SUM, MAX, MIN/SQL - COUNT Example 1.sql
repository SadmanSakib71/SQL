-- find the total num of customers
-- and all customer details
SELECT 
	*,
	-- with null * without null column name
	COUNT(*) OVER() AS Total_customer,
	COUNT(Score) OVER() AS Total_customer_score,
	COUNT(FirstName) OVER() AS Total_customer_FirstName,
	COUNT(LastName) OVER() AS Total_customer_LastName
FROM Sales.Customers