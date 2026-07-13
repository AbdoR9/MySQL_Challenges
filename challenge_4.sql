USE e_store;

SELECT 
    customers.first_name,
    SUM(orders.amount) AS total_spent,
    COUNT(orders.order_id) AS order_count
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id;

GROUP BY customers.first_name

ORDER BY total_spent DESC;
