-- get all the  orders without matching the customers

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
WHERE o.customer_id IS NULL