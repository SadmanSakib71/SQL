-- unique index

SELECT *
FROM Sales.Products

CREATE UNIQUE NONCLUSTERED INDEX index_products_Product 
ON Sales.Products (Product)

-- we cannot add this cuz caps is already there

INSERT INTO Sales.Products (ProductID, Product) VALUES (106,'Caps')