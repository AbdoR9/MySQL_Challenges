USE e_store;

SELECT
    customers.first_name,
    COALESCE(SUM(orders.amount), 0) AS total_spent
FROM customers
LEFT JOIN orders ON orders.customer_id = customers.customer_id;

GROUP BY customers.first_name;