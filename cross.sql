

CREATE TABLE departments (
    dept_id INT,
    dept_name VARCHAR(100)
);


CREATE TABLE employees (
   emp_id INT,
   emp_name VARCHAR(100),
   dept_id INT
);



-- Insert departments first
INSERT INTO departments (dept_id, dept_name) VALUES
(1, 'Engineering'),
(2, 'Marketing'),
(3, 'Finance'),
(4, 'Human Resources'),
(5, 'Sales');

-- Insert employees with references to departments
INSERT INTO employees (emp_id, emp_name, dept_id) VALUES
(101, 'John Smith', 1),
(102, 'Maria Garcia', 1),
(103, 'Robert Chen', 2),
(104, 'Sarah Johnson', 3),
(105, 'Michael Brown', 2),
(106, 'Lisa Wong', 4),
(107, 'David Miller', 5),
(108, 'Jennifer Lee', 3),
(109, 'James Wilson', 5),
(110, 'Patricia Taylor', 1);


SELECT * FROM employees;
SELECT * FROM departments;

-- INNER JOIN
SELECT *
FROM employees
FULL JOIN departments
ON employees.dept_id = departments.dept_id;


-- cross join
SELECT *
FROM employees
CROSS JOIN departments;


-- natural join

SELECT *
FROM employees
NATURAL JOIN departments;
