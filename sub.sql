-- Active: 1729274956860@@127.0.0.1@5432@postgres

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
); 


-- Insert 20 sample records
INSERT INTO employees (employee_name, department_name, salary, hire_date)
VALUES
('John Doe', 'HR', 50000.00, '2021-01-15'),
('Jane Smith', 'Finance', 60000.00, '2020-03-22'),
('Michael Johnson', 'IT', 55000.00, '2019-07-30'),
('Emily Davis', 'HR', 52000.00, '2022-05-10'),
('Chris Brown', 'Marketing', 62000.00, '2021-11-19'),
('Sarah Wilson', 'Finance', 58000.00, '2018-09-03'),
('David Miller', 'IT', 54000.00, '2020-02-17'),
('Emma Taylor', 'Marketing', 61000.00, '2019-12-05'),
('Mark Lee', 'Operations', 64000.00, '2020-06-18'),
('Anna Scott', 'HR', 50000.00, '2018-08-27'),
('James White', 'Finance', 56000.00, '2019-03-11'),
('Olivia Harris', 'IT', 53000.00, '2022-07-22'),
('Lucas Wright', 'Marketing', 59000.00, '2021-09-29'),
('Sophia King', 'Operations', 62000.00, '2020-11-10'),
('Daniel Evans', 'HR', 48000.00, '2022-01-05'),
('Ava Martinez', 'Finance', 57000.00, '2021-10-14'),
('Liam Turner', 'IT', 60000.00, '2018-12-21'),
('Isabella Clark', 'Marketing', 61000.00, '2021-03-08'),
('Noah Lewis', 'Operations', 63000.00, '2019-05-27'),
('Mia Walker', 'HR', 49000.00, '2022-04-13');

SELECT * FROM employees;

SELECT max(salary) FROM employees WHERE department_name = 'HR'; 


SELECT * FROM employees WHERE salary > (SELECT max(salary) FROM employees WHERE department_name = 'HR' 
)