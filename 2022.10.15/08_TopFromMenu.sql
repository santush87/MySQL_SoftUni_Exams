SELECT 
    p.id, p.name, COUNT(p.name) AS count
FROM
    products AS p
        JOIN
    orders_products AS op ON p.id = op.product_id
        JOIN
    orders AS o ON o.id = op.order_id
GROUP BY p.name
HAVING count >= 5
ORDER BY count DESC , p.name