-- Active: 1729274956860@@127.0.0.1@5432@ph@public

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT REFERENCES departments(department_id),
    salary DECIMAL(10, 2),
    hire_date DATE
);

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);

-- 3:30
DROP Table employees;


INSERT INTO departments(department_name) VALUES 
    ('HR'),
    ('Marcketing'),
    ('Finance'),
    ('IT'),
    ('Engineering'),
    ('Customer Support'),
    ('Administration'),
    ('Quality Assurance');


INSERT INTO employees (employee_name, department_id, salary, hire_date)
VALUES 
('John Doe', 1, 50000, '2021-01-15'),
('Jane Smith', 2, 60000, '2020-03-22'),
('Michael Johnson', 3, 55000, '2019-07-30'),
('Emily Davis', 4, 52000, '2022-05-10'),
('Chris Brown', 5, 62000, '2021-11-19'),
('Sarah Wilson', 6, 58000, '2018-09-03'),
('David Miller', 7, 54000, '2020-02-17'),
('Emma Taylor', 8, 61000, '2019-12-05');


SELECT * FROM employees
    JOIN departments ON employees.department_id = departments.department_id;


SELECT * FROM employees
    JOIN departments USING(department_id);


SELECT department_name, round(avg(salary)) as avg_salary FROM employees
    JOIN departments USING(department_id)
    GROUP BY department_name;

SELECT department_name, count(*) as avg_salary FROM employees
    JOIN departments USING(department_id)
    GROUP BY department_name;


SELECT department_name, round(avg(salary)) as avg_salary FROM employees
    JOIN departments USING(department_id)
    GROUP BY department_name
    ORDER BY avg_salary desc
    LIMIT 1 ;

SELECT extract(YEAR FROM hire_date) as hire_year, count(*) FROM employees
    GROUP BY hire_year;

