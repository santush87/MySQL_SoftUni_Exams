INSERT INTO airplanes(model, passengers_capacity, tank_capacity, cost)(
SELECT 
concat(reverse(p.first_name), '797'),
(char_length(p.last_name)*17),
(p.id * 790),
(char_length(p.first_name)*50.6)
FROM passengers AS p
WHERE p.id <=5);