DELIMITER $$

CREATE PROCEDURE udp_happy_hour(type VARCHAR(50))
BEGIN

UPDATE products AS p
SET p.price = p.price - p.price*0.20
WHERE price >= 10 AND p.type = type;

END$$
DELIMITER ;

SET SQL_SAFE_UPDATES = 0;

SELECT * FROM products AS p
-- SET p.price = p.price - p.price*0.20
WHERE price >= 10 AND p.type = 'Whiskey';
