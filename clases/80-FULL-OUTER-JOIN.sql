-- country a -- name, contienentCode (codigo numerico)
-- continent b -- name as continentName

-- full outer join

--- traer datos de country y continent, incluyendo registros aunque no estén relacionados
SELECT
  a.name as country,
  a.continent as continentCode,
  b.name as continentName
from
  country a
  FULL OUTER JOIN continent b on a.continent = b.code ORDER BY a.name desc