SELECT 
    p.id,
    CONCAT_WS(' ', p.first_name, p.last_name) AS full_name,
    p.age,
    p.position,
    p.hire_date
FROM
    players AS p
        JOIN
    skills_data AS sd ON p.skills_data_id = sd.id
WHERE
    p.age < 23 AND sd.strength > 50
        AND p.hire_date IS NULL
        AND p.position = 'A'
ORDER BY p.salary , p.age;