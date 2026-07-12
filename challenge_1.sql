CREATE DATABASE online_shop;
USE online_shop;
CREATE TABLE products(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    price INT,
    quantity INT
);

INSERT INTO products(name, price, quantity) VALUES
    ('Laptop', 30000, 5),
    ('Mouse', 500, 20),
    ('Keyboard', 1000, 12);

SELECT * FROM products;
