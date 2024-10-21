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
 

SELECT * FROM students ORDER BY age ASC

SELECT DISTINCT blood_gorup from students;


-- filter
SELECT * FROM students
    WHERE grade = 'A' AND course = 'Mathematics' ;

SELECT * FROM students
    WHERE age <= 20 AND grade= 'A';

SELECT * FROM students
    WHERE age != 20;

-- scaler
SELECT concat(first_name, ' ', last_name), * from students;

-- aggregate

SELECT count(*) FROM students;

SELECT max(length(first_name)) FROM students;

SELECT * from students
    WHERE NOT country = 'USA';

SELECT * FROM students
    WHERE email IS NOT NULL;

SELECT COALESCE(NULL, 5);

SELECT COALESCE(email, 'Email not Provided') as "Email" FROM students;

SELECT country FROM students WHERE country IN('USA', 'UK');

SELECT country FROM students WHERE country NOT IN('USA', 'UK');

SELECT * from students WHERE age BETWEEN 20 AND 21;

SELECT * FROM students
    WHERE first_name LIKE '__a_';

SELECT * FROM students
    WHERE first_name ILIKE '__A_';


SELECT * FROM students LIMIT 5 OFFSET 4;

SELECT * FROM students WHERE country IN('USA', 'UK') LIMIT 6;

SELECT * FROM students LIMIT 5 OFFSET 5 * 1;

DELETE FROM students;

UPDATE students
    SET email = 'deafult@gamil.com'
    WHERE student_id = 41

SELECT * from students;