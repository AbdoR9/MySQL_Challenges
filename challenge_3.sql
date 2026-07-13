CREATE DATABASE e_store;

USE e_store;

CREATE TABLE customers(
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE orders(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10, 2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers(first_name, email) VALUES
('Abdelrahman', 'abdo@gmail.com'),
('Ali', 'ali@gmail.com');

INSERT INTO orders(order_date, amount, customer_id) VALUES
('2026-07-12', 1500.25, 1),
('2026-07-13', 450.00, 1),
('2026-07-13', 3200.75, 2);

SELECT * FROM customers;

SELECT * FROM orders;
