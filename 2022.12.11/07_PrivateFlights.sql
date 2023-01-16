SELECT 
   concat(UPPER(SUBSTRING(p.last_name, 1, 2)), p.country_id) AS flight_code,
   concat(p.first_name,' ', p.last_name) AS full_name,
   p.country_id
FROM
    flights AS f
       RIGHT JOIN
    flights_passengers AS fp ON f.id = fp.passenger_id
        RIGHT JOIN
    passengers AS p ON fp.passenger_id = p.id
    WHERE fp.flight_id IS NULL
    ORDER BY p.country_id