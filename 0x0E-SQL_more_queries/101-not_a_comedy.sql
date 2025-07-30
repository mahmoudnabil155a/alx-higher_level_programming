-- select genres not lunked to dixter
USE hbtn_0d_tvshows;

SELECT sh.title
FROM tv_shows sh
WHERE sh.id NOT IN (
    SELECT sh.id
    FROM tv_genres g INNER JOIN tv_show_genres sh_g ON g.id = sh_g.genre_id
    INNER JOIN tv_shows sh ON sh.id = sh_g.show_id
    WHERE g.name = 'Comedy'
)
ORDER BY sh.title ASC;