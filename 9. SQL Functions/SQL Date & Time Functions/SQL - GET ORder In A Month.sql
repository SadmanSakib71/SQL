-- get all orders from month february

SELECT *

FROM Sales.Orders
WHERE MONTH(OrderDate) = 2