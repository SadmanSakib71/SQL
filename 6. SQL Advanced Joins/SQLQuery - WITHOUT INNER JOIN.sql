-- get all the customers along with their orders but only for customers who placed their order.no INNER JOIN

SELECT 
*
-- customers table name as c and orders is o for shortcut.cuz sometimes column name can be same within two table.
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NOT NULL