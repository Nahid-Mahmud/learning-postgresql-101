-- Active: 1747545730198@@localhost@5432@ph
CREATE TABLE student (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age SMALLINT NOT NULL,
    grade CHAR(2),
    course VARCHAR(150),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);



-- Insert 25 demo student records
INSERT INTO student (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
    ('John', 'Doe', 19, 'A+', 'Computer Science', 'john.doe@example.com', '2004-05-15', 'O+', 'USA'),
    ('Jane', 'Smith', 20, 'A', 'Mathematics', 'jane.smith@example.com', '2003-08-22', 'A-', 'Canada'),
    ('Ahmed', 'Khan', 21, 'B+', 'Physics', 'ahmed.khan@example.com', '2002-11-10', 'B+', 'Pakistan'),
    ('Maria', 'Garcia', 18, 'A-', 'Biology', 'maria.garcia@example.com', '2005-03-28', 'AB+', 'Mexico'),
    ('Li', 'Wei', 22, 'B', 'Engineering', 'li.wei@example.com', '2001-07-14', 'A+', 'China'),
    ('Sophia', 'Johnson', 19, 'A', 'Chemistry', 'sophia.johnson@example.com', '2004-02-19', 'O-', 'UK'),
    ('David', 'Brown', 20, 'C+', 'History', 'david.brown@example.com', '2003-09-05', 'B-', 'Australia'),
    ('Raj', 'Patel', 21, 'B+', 'Economics', 'raj.patel@example.com', '2002-04-12', 'AB-', 'India'),
    ('Emma', 'Wilson', 18, 'A-', 'Literature', 'emma.wilson@example.com', '2005-01-30', 'O+', 'USA'),
    ('Mohammed', 'Ali', 23, 'B-', 'Business', 'mohammed.ali@example.com', '2000-12-03', 'A+', 'Egypt'),
    ('Julia', 'Kim', 19, 'A', 'Art History', 'julia.kim@example.com', '2004-06-21', 'B+', 'South Korea'),
    ('Carlos', 'Mendez', 20, 'B+', 'Psychology', 'carlos.mendez@example.com', '2003-11-09', 'O+', 'Brazil'),
    ('Aisha', 'Rahman', 22, 'A+', 'Medicine', 'aisha.rahman@example.com', '2001-08-17', 'AB+', 'Bangladesh'),
    ('Thomas', 'Lee', 19, 'C', 'Sociology', 'thomas.lee@example.com', '2004-04-25', 'B-', 'Canada'),
    ('Fatima', 'Hassan', 21, 'B', 'Education', 'fatima.hassan@example.com', '2002-10-14', 'A-', 'Morocco'),
    ('Chen', 'Liu', 20, 'A-', 'Data Science', 'chen.liu@example.com', '2003-07-08', 'O+', 'Singapore'),
    ('Elena', 'Petrova', 22, 'B+', 'Architecture', 'elena.petrova@example.com', '2001-03-02', 'AB-', 'Russia'),
    ('Diego', 'Torres', 19, 'A', 'Music', 'diego.torres@example.com', '2004-09-11', 'B+', 'Spain'),
    ('Priya', 'Sharma', 20, 'B-', 'Finance', 'priya.sharma@example.com', '2003-06-27', 'O-', 'India'),
    ('Hiroshi', 'Tanaka', 21, 'A+', 'Electronics', 'hiroshi.tanaka@example.com', '2002-01-15', 'A+', 'Japan'),
    ('Isabella', 'Santos', 18, 'B', 'Environmental Science', 'isabella.santos@example.com', '2005-05-19', 'B-', 'Brazil'),
    ('Omar', 'Farooq', 23, 'A-', 'Political Science', 'omar.farooq@example.com', '2000-11-23', 'AB+', 'Saudi Arabia'),
    ('Sarah', 'Williams', 19, 'B+', 'Journalism', 'sarah.williams@example.com', '2004-08-07', 'O+', 'Australia'),
    ('Kwame', 'Osei', 20, 'A', 'Philosophy', 'kwame.osei@example.com', '2003-02-14', 'B+', 'Ghana'),
    ('Mei', 'Zhang', 22, 'A-', 'Biotechnology', 'mei.zhang@example.com', '2001-12-09', 'A-', 'Malaysia');


-- create email unique

ALTER TABLE student
    -- ADD CONSTRAINT student_email_unique UNIQUE (email);
    ADD UNIQUE (EMAIL);


SELECT * FROM student
    ORDER BY first_name ASC;

EXPLAIN ANALYSE
SELECT country from student
    ORDER BY country ASC;


SELECT first_name, last_name, age,grade, country from student  -- DISTINCT shows unique 
    WHERE age >= 20 AND grade = 'A'
    ORDER BY first_name  asc
    ; 


SELECT first_name, last_name, age,grade, country from student  -- DISTINCT shows unique 
    WHERE age >= 23 OR grade = 'A+'
    ORDER BY first_name  asc
    ; 


SELECT upper(first_name) , age , country from student;


SELECT concat(first_name,' ', last_name) as full_name , age , country from student;



SELECT length(first_name) as length_of_first_name , age , country from student
 LIMIT 10

;


SELECT AVG(age) as length_of_first_name from student
 LIMIT 10

;


SELECT min(age) as length_of_first_name from student
 LIMIT 10

;




SELECT max(age) as length_of_first_name from student
 LIMIT 10

;



SELECT SUM(age) as length_of_first_name from student
 LIMIT 10

;







SELECT count(*) as length_of_first_name from student
 LIMIT 10
;


SELECT MAX(LENGTH(first_name)) FROM student;


SELECT * FROM student
 ORDER BY student_id
--  WHERE age != 20

;


--  null in postgres


-- i want to set grade of student_id 4 null   


UPDATE student
    SET grade = NULL
    WHERE student_id = 15;

SELECT * FROM student
    WHERE grade IS NOT NULL;


SELECT COALESCE(grade, 'did not give exam!'), student_id from student ORDER BY student_id;



SELECT * FROM student;




SELECT * FROM student
    WHERE country = 'Pakistan' OR country = 'Pakistan' or country = 'Canada';

    SELECT * FROM student
    WHERE country NOT IN('Canada','USA');




SELECT * FROM student
    WHERE age BETWEEN 19 AND 22
    
    ;


SELECT * FROM student
    -- WHERE dob BETWEEN '2001-01-01' AND '2002-01-01'
    -- ORDER BY dob desc
    
    ;


SELECT * FROM student
    WHERE first_name LIKE '%a%' OR last_name LIKE '%a%'
    ORDER BY first_name
    
    ;


SELECT * FROM student
    WHERE first_name LIKE '___a%' 
    ORDER BY first_name
    
    ;


SELECT * FROM student
    WHERE first_name LIKE '___a' 
    ORDER BY first_name
    
    ;



SELECT * FROM student
    WHERE first_name LIKE '___a_' 
    ORDER BY first_name
    
    ;

SELECT * FROM student
    WHERE first_name ILIKE 'a%' 
    ORDER BY first_name
    
    ;




--  limit and offset


SELECT * FROM student
    ORDER BY student_id
    LIMIT 5 
    OFFSET 5


;









-- SELECT column1, column2
-- FROM table_name
-- WHERE condition
-- GROUP BY column
-- HAVING condition
-- ORDER BY column
-- LIMIT number
-- OFFSET number;







SELECT * FROM student

;

DELETE FROM student
    WHERE student_id = 2
;

UPDATE student
    SET grade ='A+'
    WHERE student_id = 3
    ;
















































































