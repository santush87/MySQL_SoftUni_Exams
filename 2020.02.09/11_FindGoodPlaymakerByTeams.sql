DELIMITER $$
CREATE PROCEDURE udp_find_playmaker(min_dribble_points INT, team_name VARCHAR(45))
BEGIN
SELECT 
    concat_ws(' ', p.first_name, p.last_name) AS full_name,
    p.age,
    p.salary,
    sd.dribbling,
    sd.speed,
    t.name AS team_name
FROM
    players AS p
        JOIN
    skills_data AS sd ON sd.id = p.skills_data_id
        JOIN
    teams AS t ON p.team_id = t.id
WHERE
    sd.dribbling > min_dribble_points AND t.name = team_name
        AND sd.speed > (SELECT 
            AVG(speed)
        FROM
            skills_data)
ORDER BY sd.speed DESC
LIMIT 1;
END$$
DELIMITER ;

CALL udp_find_playmaker (20, 'Skyble');