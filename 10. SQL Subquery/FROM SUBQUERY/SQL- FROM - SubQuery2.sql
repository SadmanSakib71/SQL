/*Task: Find the products that have a price 
higher than the average price of all products*/

-- sub query
SELECT 
	ProductID,
	Price,
	AVG(Price) OVER() AS AVG_Price
FROM Sales.Products

-- MAIN query
SELECT *
FROM(SELECT 
	ProductID,
	Price,
	AVG(Price) OVER() AS AVG_Price
FROM Sales.Products) t 
WHERE Price > AVG_Price