/* all the customer from uk and score is more than 500

SELECT *
FROM customers
WHERE country = 'UK' AND score > 500
*/

/*  all the customer from uk or the score is more than 500

SELECT *
FROM customers
WHERE country = 'UK' OR score > 200
*/

-- all customer that score not less than 300
SELECT *
FROM customers
WHERE  NOT score < 351