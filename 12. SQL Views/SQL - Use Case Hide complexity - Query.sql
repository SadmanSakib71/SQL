--TASK: Provide view that combines details from orders, products, customers, and employees

CREATE VIEW Sales.V_orders_details AS (
SELECT 
	o.OrderID,
	o.CustomerID,
	o.OrderDate,
	p.Product,
	p.Category As Product_Category,
	COALESCE(c.FirstName, '') + ' ' + COALESCE(c.LastName,'') As Customer_Name,
	c.Country As Customer_Country,
	COALESCE(e.FirstName, '') + ' ' + COALESCE(e.LastName,'') As Employee_Name,
	e.Department As Employee_Department,
	o.Sales,
	o.Quantity
FROM Sales.Orders AS o
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID
)

