-- remove '-' from phone number

SELECT
'123-456-7890' AS phone,
REPLACE ( '123-456-7890' , '-' , '/') AS RepPHOne