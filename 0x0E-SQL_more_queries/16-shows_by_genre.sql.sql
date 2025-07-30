-- list all shows and genres
USE hbtn_0d_tvshows;

SELECT sh.title, g.name
FROM tv_genres g INNER JOIN tv_show_genres sh_g ON g.id = sh_g.genre_id
RIGHT JOIN tv_shows sh ON sh.id = sh_g.show_id
ORDER BY sh.title ASC, g.name ASC;