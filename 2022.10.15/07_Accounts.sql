SELECT 
    CONCAT(last_name,
            first_name,
            CHAR_LENGTH(first_name),
            'Restaurant') AS username,
    REVERSE(SUBSTR(email, 2, 12)) AS password
FROM
    waiters
WHERE
    waiters.salary IS NOT NULL
ORDER BY password DESC