-- Active: 1729274956860@@127.0.0.1@5432@ph
SELECT * from employees;

EXPLAIN ANALYSE
SELECT  * FROM employees WHERE employee_name = 'John Doe';

CREATE INDEX idx_employees_last_name
on employees(employee_name);

SHOW data_directory