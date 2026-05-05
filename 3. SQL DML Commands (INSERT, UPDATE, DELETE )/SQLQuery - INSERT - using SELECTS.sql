-- insert data from customer to persons

INSERT INTO persons (id,first_name,birth_day,phone)

SELECT 
	id,
	first_name,
	null,
	'UnKnown'
FROM customers
