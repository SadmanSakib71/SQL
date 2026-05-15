-- In order to analyze customer loyalty,
-- rank customers based on the average days between their orders

SELECT 
	CustomerID,
	OrderDate AS Current_order_date,
	LEAD(OrderDate) OVER (PARTITION BY CustomerID ORDER BY OrderDate) As Next_order_date,
	DATEDIFF(DAY,OrderDate,LEAD(OrderDate) OVER (PARTITION BY CustomerID ORDER BY OrderDate)) As Order_Date_difference
FROM Sales.Orders
ORDER BY CustomerID,OrderDate

--nested queery

SELECT 
CustomerID,
AVG(Order_Date_difference) As Avg_order_date,
RANK() OVER(ORDER BY COALESCE(AVG(Order_Date_difference), 9999)) AS Rank_customer

FROM (SELECT 
	CustomerID,
	OrderDate AS Current_order_date,
	LEAD(OrderDate) OVER (PARTITION BY CustomerID ORDER BY OrderDate) As Next_order_date,
	DATEDIFF(DAY,OrderDate,LEAD(OrderDate) OVER (PARTITION BY CustomerID ORDER BY OrderDate)) As Order_Date_difference
FROM Sales.Orders) t
GROUP BY CustomerID