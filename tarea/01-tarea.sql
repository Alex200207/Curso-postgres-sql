

-- 1. Ver todos los registros
SELECT
	*
FROM
	users;

-- 2. Ver el registro cuyo id sea igual a 10
SELECT
	*
FROM
	users
WHERE
	id = 10;

-- 3. Quiero todos los registros que cuyo primer nombre sea Jim (engañosa)
SELECT
	*
FROM
	users
WHERE
	name LIKE 'Jim %'; --respeta el espacio despues de Jim, para asegurarnos que es el primer nombre y no el segundo o tercer nombre

-- 4. Todos los registros cuyo segundo nombre es Alexander
SELECT
	*
FROM
	users
WHERE
	name LIKE '% Alexander'; -- el % al inicio indica que puede haber cualquier cosa antes de Alexander, pero debe terminar con Alexander

-- 5. Cambiar el nombre del registro con id = 1, por tu nombre Ej:'Fernando Herrera'
UPDATE
	users
SET
	NAME = 'Fernando Herrera'
WHERE
	id = 1;


-- 6. Borrar el último registro de la tabla 
SELECT max(id) from users; -- traemos el id mas alto, que es el ultimo registro insertado

DELETE FROM users
WHERE id = ( SELECT max(id) from users ); -- tambien es posible hacer una subconsulta dentro del delete, para traer el id mas alto y eliminar ese registro

select * from users;