INSERT INTO reviews(content,picture_url,published_at,rating)(
SELECT 
(substr(`description`,1,15)),
(reverse(name)),
(STR_TO_DATE('10-10-2010', '%d-%m-%Y')),
(price /8)
FROM products
WHERE id >= 5);