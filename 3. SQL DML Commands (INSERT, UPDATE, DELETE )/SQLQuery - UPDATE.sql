/*change the score of customer id 6 to 0

UPDATE customers
SET score = 0
WHERE id = 6

*/

/*change the score of customer id 2 to 69
and change the country to bangladesh 

UPDATE customers 
SET 
	score = 69,
	country = 'bangladesh'

WHERE id = 2

*/

/* upate all the customer with null score and setting their score to 0 */

UPDATE customers
SET score = 0
WHERE score IS NULL