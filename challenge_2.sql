CREATE DATABASE company_hr;

USE company_hr;

CREATE TABLE employees(
    id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(80),
    age TINYINT,
    salary DECIMAL(10, 2),
    gender CHAR(1)
);

INSERT INTO employees(emp_name, age, salary, gender) VALUES
('Ahmed Ali', 28, 5500.50, 'M'),
('Mona Mohamed', 24, 7000.75, 'F'),
('Sayed Mansour', 35, 9000.00, 'M');

SELECT * FROM employees;