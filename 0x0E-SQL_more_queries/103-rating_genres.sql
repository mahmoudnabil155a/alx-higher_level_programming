-- tv rating 
USE hbtn_0d_tvshows_rate;

SELECT g.name , SUM(sh_r.rate) AS rating 
FROM tv_shows sh 
INNER JOIN tv_show_ratings sh_r ON sh.id = sh_r.show_id
INNER JOIN tv_show_genres sh_g ON sh.id= sh_g.show_id
INNER JOIN tv_genres g ON g.id = sh_g.genre_id  
GROUP BY g.id
ORDER BY rating DESC;