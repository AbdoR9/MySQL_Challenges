USE e_store;

SELECT
    customers.first_name,
    COALESCE(SUM(orders.amount), 0) AS total_spent,
    CASE
        WHEN  COALESCE(SUM(orders.amount), 0) > 3000 THEN 'VIP'
        WHEN  COALESCE(SUM(orders.amount), 0) > 0    THEN 'Regular'
        ELSE 'New Customer'
    END AS customer_class
FROM customers
LEFT JOIN orders ON orders.customer_id = customers.customer_id;

GROUP BY customers.first_name;

ORDER BY total_spent DESC;
