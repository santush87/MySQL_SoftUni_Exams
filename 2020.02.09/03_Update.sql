UPDATE coaches AS c 
SET 
    c.coach_level = c.coach_level + 1
WHERE
    c.id IN (SELECT 
            coach_id
        FROM
            players_coaches)
        AND first_name LIKE 'A%';
        
        SET Sql_Safe_updates = 0;
        
-- vtori vatiant
   UPDATE coaches AS c
        JOIN
    players_coaches AS pc ON c.id = pc.coach_id 
SET 
    c.coach_level = c.coach_level + 1
WHERE
    first_name LIKE 'A%';
        