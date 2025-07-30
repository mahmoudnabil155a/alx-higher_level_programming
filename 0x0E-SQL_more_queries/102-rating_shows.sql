-- tv rating 
USE hbtn_0d_tvshows_rate;

SELECT sh.title, SUM(sh_r.rate) AS rating 
FROM tv_shows sh INNER JOIN tv_show_ratings sh_r
ON sh.id = sh_r.show_id
GROUP BY sh.id
ORDER BY rating DESC;