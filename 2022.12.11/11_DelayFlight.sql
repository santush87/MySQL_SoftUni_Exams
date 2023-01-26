DELIMITER $$

CREATE PROCEDURE udp_delay_flight(code VARCHAR(50))
BEGIN

UPDATE flights AS f
SET f.departure = addtime(f.departure,"00:30:00"), f.has_delay = 1
WHERE f.flight_code = code;

END$$
DELIMITER ;

SET SQL_SAFE_UPDATES = 0;

SELECT 
departure,
addtime(departure,"00:30:00") AS newTime,
has_delay
 FROM flights
WHERE id = 1
