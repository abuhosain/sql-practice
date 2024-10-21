-- Active: 1729274956860@@127.0.0.1@5432@postgres
 
--  SHOW timezone;

SELECT now();

CREATE TABLE timeZ(ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);

INSERT into timeZ VALUES('2024-01-12 10:45:00', '2024-01-12 10:45:00');

SELECT * FROM timeZ;

SELECT now();

SELECT CURRENT_DATE;

SELECT now()::date;

SELECT now()::time;

SELECT to_char(now(), 'mm/dd/yyyy');

SELECT CURRENT_DATE - INTERVAL '1 year';

select age(CURRENT_DATE, '2006-09-25');

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_gorup VARCHAR(5),
    country VARCHAR(50)
 ); 

 INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_gorup, country)
VALUES
('John', 'Doe', 21, 'A', 'Mathematics', 'john.doe@example.com', '2003-05-15', 'O+', 'USA'),
('Jane', 'Smith', 22, 'B', 'Physics', 'jane.smith@example.com', '2002-08-23', 'A+', 'Canada'),
('Alice', 'Johnson', 20, 'C', 'Chemistry', 'alice.johnson@example.com', '2004-01-11', 'B+', 'UK'),
('Bob', 'Brown', 23, 'A', 'Computer Science', 'bob.brown@example.com', '2001-07-29', 'O-', 'Australia'),
('Charlie', 'Williams', 21, 'B', 'History', 'charlie.williams@example.com', '2003-09-10', 'AB+', 'USA'),
('David', 'Miller', 24, 'C', 'Biology', 'david.miller@example.com', '2000-04-05', 'A-', 'Germany')
 

select * from students;

SELECT *, age(CURRENT_DATE, dob) FROM students;

SELECT extract(year from '2024-01-25'::date);

SELECT extract(MONTH from '2024-01-25'::date);

SELECT extract(DAY from '2024-01-25'::date);

SELECT 1 :: BOOLEAN;

SELECT 'yes' :: BOOLEAN;