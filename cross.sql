-- Active: 1729274956860@@127.0.0.1@5432@ph

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);

CREATE TABLE department (
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO employees VALUES(1, 'John Doe', 101);
INSERT INTO employees VALUES(1, 'Jane Smith', 102);
 
INSERT INTO department VALUES(101, 'Human Resource');
INSERT INTO department VALUES(102, 'Marketing');

SELECT * from employees;
SELECT * from department;

-- cross join

SELECT * FROM employees 
    CROSS JOIN department;

-- natuarla join

SELECT * FROM employees 
    NATURAL JOIN department;
