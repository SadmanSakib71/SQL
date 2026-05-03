/*create new table name : persons
with column: id,person_name,birth_day,phone
*/

CREATE TABLE persons (

		id INT NOT NULL,
		first_name VARCHAR(50) NOT NULL,
		birth_day DATE,
		phone VARCHAR(15) NOT NULL,
		CONSTRAINT pk_persons PRIMARY KEY (id)

)
