SELECT 
    flight_code, 
    departure,
    (CASE WHEN hour(departure)>=5 AND hour(departure)<12 THEN 'Morning'
    WHEN hour(departure)>=12 AND hour(departure)<17 THEN 'Afternoon'
    WHEN hour(departure)>=17 AND hour(departure)<21 THEN 'Evening'
    ELSE 'Night' END) AS day_part
FROM
    flights
ORDER BY flight_code DESC