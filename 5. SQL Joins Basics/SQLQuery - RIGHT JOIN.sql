-- get all the customers along with their orders, including orders without matching customers

SELECT 
	c.id,
	c.first_name,
	c.country,
	o.order_id,
	o.sales
-- customers table name as c and orders is o for shortcut.cuz sometimes column name can be same within two table.
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id