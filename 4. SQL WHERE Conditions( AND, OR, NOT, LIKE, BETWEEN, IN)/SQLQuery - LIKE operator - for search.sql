-- get customers whos first name start with M

SELECT *
FROM customers
WHERE first_name LIKE 'M%'


-- get customers whos first name ends with n

SELECT *
FROM customers
WHERE first_name LIKE ('%n')

-- get customers whos first name contains r

SELECT *
FROM customers
WHERE first_name LIKE ('%r%')

-- get customers whos first name has r in the third position

SELECT * 
FROM customers
WHERE first_name LIKE ('__r%')
