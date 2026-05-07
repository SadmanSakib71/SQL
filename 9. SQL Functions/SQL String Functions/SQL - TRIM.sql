SELECT 
	first_name,
	LEN (first_name) len_name,
	LEN( TRIM(first_name)) trim_len_name
FROM customers
--WHERE first_name != TRIM (first_name)
WHERE LEN (first_name) != LEN( TRIM(first_name))
