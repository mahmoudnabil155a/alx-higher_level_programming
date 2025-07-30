-- all tv even if it doesnt have genre
USE hbtn_0d_tvshows;

SELECT sh.title, sh_g.genre_id
FROM tv_shows sh LEFT JOIN tv_show_genres sh_g
ON sh.id = sh_g.show_id
ORDER BY sh.title ASC, sh_g.genre_id ASC;