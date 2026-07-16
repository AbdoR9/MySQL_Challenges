USE e_store;

SELECT 
    customers.first_name,
    orders.order_id,
    orders.amount
FROM customers
INNER JOIN orders 
    ON orders.customer_id = customers.customer_id
WHERE orders.amount > (SELECT AVG(amount) FROM orders)
ORDER BY orders.amount DESC;
