DELIMITER $$

CREATE FUNCTION udf_actor_history_movies_count(full_name VARCHAR(50))
RETURNS INT
DETERMINISTIC

BEGIN
DECLARE history_movies_count INT; #брой на историческите филми за даден актьор
SET history_movies_count := (
SELECT 
    COUNT(*) AS history_movies
FROM
    actors AS a
        JOIN
    movies_actors AS ma ON a.id = ma.actor_id
        JOIN
    genres_movies AS gm ON ma.movie_id = gm.movie_id
        JOIN
    genres AS g ON g.id = gm.genre_id
    WHERE g.id = 12 AND full_name = concat(a.first_name,' ', a.last_name)  
);
RETURN history_movies_count;

END $$

DELIMITER ;
