-- RIGHT OUTER JOIN 

SELECT
  a.name as country,
  a.continent as continentCode,
  b.name as continentName
FROM
  country a
  RIGHT JOIN continent b on a.continent = b.code
 WHERE a.continent IS NULL ORDER by
  a.name desc;