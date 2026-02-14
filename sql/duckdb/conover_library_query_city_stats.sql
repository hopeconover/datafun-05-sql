

SELECT
    b.city,
    COUNT(c.checkout_id) as checkout_count
FROM branch b
JOIN checkout c ON b.branch_id = c.branch_id
GROUP BY b.city;
