-- get all the customers without ther orders and orders without customers

SELECT 
	c.id,
	c.first_name,
	c.country,
	o.order_id,
	o.sales
-- customers table name as c and orders is o for shortcut.cuz sometimes column name can be same within two table.
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL OR o.customer_id IS NULL