USE e_store;

SELECT
    customers.first_name,
    COALESCE(AVG(orders.amount), 0) AS average_spent,
FROM customers
LEFT JOIN orders ON orders.customer_id = customers.customer_id;

GROUP BY customers.first_name;

ORDER BY average_spent DESC;