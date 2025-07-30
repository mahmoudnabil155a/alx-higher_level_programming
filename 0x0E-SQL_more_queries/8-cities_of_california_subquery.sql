-- join

SELECT c.id, c.name
FROM states s INNER JOIN cities c
ON s.id = c.state_id
WHERE s.name = 'California'
ORDER BY c.id;