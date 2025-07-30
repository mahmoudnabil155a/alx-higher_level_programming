-- shows dont have genres
USE hbtn_0d_tvshows;

SELECT sh.title, sh_g.genre_id
FROM tv_shows sh LEFT JOIN tv_show_genres sh_g
ON sh.id = sh_g.show_id
WHERE sh_g.show_id IS NULL
ORDER BY sh.title ASC, sh_g.genre_id ASC;