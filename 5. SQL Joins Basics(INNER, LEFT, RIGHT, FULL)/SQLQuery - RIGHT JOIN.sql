-- get all the data customers and orders, even there is no match

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