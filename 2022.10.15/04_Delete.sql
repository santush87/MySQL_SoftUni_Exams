DELETE w FROM waiters AS w
        LEFT JOIN
    orders AS o ON o.waiter_id = w.id 
WHERE
    o.waiter_id IS NULL;
SET SQL_SAFE_UPDATES = 0;
    