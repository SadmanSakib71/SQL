-- get all the customer germany and usa
SELECT *
FROM customers
WHERE country IN ('germany','usa')

-- get all the customer that not in germany and usa
SELECT *
FROM customers
WHERE country NOT IN ('germany','usa')