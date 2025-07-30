-- count shows for each genre
USE hbtn_0d_tvshows;

SELECT g.name as genre , COUNT(*) AS number_of_shows
FROM tv_genres g INNER JOIN tv_show_genres sh_g
ON g.id = sh_g.genre_id
GROUP BY g.id
ORDER BY number_of_shows DESC;