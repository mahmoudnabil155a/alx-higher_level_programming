-- select genres not lunked to dixter
USE hbtn_0d_tvshows;

SELECT g.name
FROM tv_genres g
WHERE g.id NOT IN (
    SELECT g.id
    FROM tv_genres g INNER JOIN tv_show_genres sh_g ON g.id = sh_g.genre_id
    INNER JOIN tv_shows sh ON sh.id = sh_g.show_id
    WHERE sh.title = 'Dexter'
)
ORDER BY g.name ASC;