DELIMITER $$

CREATE FUNCTION udf_client_bill(full_name VARCHAR(50))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
DECLARE theBill DECIMAL(10,2);
SET theBill :=(
SELECT 
    format(sum(p.price), 2)
FROM
    clients AS c
    JOIN
    orders_clients AS oc ON c.id = oc.client_id
    JOIN
    orders_products AS op ON oc.order_id = op.order_id
    JOIN
    products AS p ON p.id = op.product_id
    WHERE concat(c.first_name, ' ', c.last_name) = full_name	
);
RETURN theBill;
END $$

DELIMITER ;

SELECT c.first_name,c.last_name, udf_client_bill('Silvio Blyth') as 'bill' FROM clients c
WHERE c.first_name = 'Silvio' AND c.last_name= 'Blyth';
    