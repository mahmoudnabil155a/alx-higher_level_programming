-- join

SELECT c.id, c.name, s.name
FROM states s INNER JOIN cities c
ON s.id = c.state_id
ORDER BY c.id;