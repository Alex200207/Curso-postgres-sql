SELECT
	COUNT(*), 
	-- contar todos los registros de cada grupo

	SUBSTRING(email, POSITION('@' IN email) + 1) AS DOMAIN
	-- obtener el dominio del email
	-- ejemplo: gmail.com

FROM users
-- usar la tabla users

GROUP BY
	SUBSTRING(email, POSITION('@' IN email) + 1)
	-- agrupar usuarios por dominio de email

HAVING COUNT(*) > 1;
-- mostrar solo los dominios que tengan más de un usuario

-- traducción directa:
-- contar cuántos usuarios hay por cada dominio de correo
-- y mostrar únicamente los dominios repetidos

select
count(*)
substring(email, position('@' in email) + 1) as domain
from users
group by substring(email, position('@' in email) + 1)
having count(*0) > 1;