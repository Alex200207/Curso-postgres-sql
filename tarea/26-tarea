-- establecer first name y last name a partir del campo name, para esto vamos a usar la funcion substring y position para encontrar el espacio entre el primer y segundo nombre


Select
  name,
  SUBSTRING(name, 0,  POSITION(' ' in name)) as first_name,
  SUBSTRING(name,POSITION(' ' in name )+1) as last_name
from
  users;


UPDATE 
	users
SET	
	first_name =  SUBSTRING(name, 0,  POSITION(' ' in name)),
	last_name =   SUBSTRING(name,POSITION(' ' in name )+1);
SELECT
	*
FROM
	users;
