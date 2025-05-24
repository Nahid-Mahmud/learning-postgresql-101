-- Active: 1747545730198@@localhost@5432@ph

DROP TABLE if EXISTS employees;

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);


INSERT INTO employees (employee_name, department_name, salary, hire_date)
VALUES
    ('John Smith', 'HR', 75000.00, '2020-03-15'),
    ('Emily Johnson', 'HR', 82500.00, '2018-06-22'),
    ('Michael Williams', 'IT', 95000.00, '2019-01-10'),
    ('Jessica Brown', 'Marketing', 68000.00, '2021-04-05'),
    ('David Jones', 'Finance', 88000.00, '2017-11-18'),
    ('Sarah Miller', 'HR', 79000.00, '2019-08-30'),
    ('Robert Davis', 'IT', 92000.00, '2018-02-14'),
    ('Jennifer Garcia', 'Marketing', 71000.00, '2020-09-12'),
    ('William Rodriguez', 'Finance', 86500.00, '2016-07-25'),
    ('Lisa Martinez', 'HR', 65000.00, '2022-01-15'),
    ('James Anderson', 'IT', 105000.00, '2015-05-20'),
    ('Patricia Thomas', 'Marketing', 73500.00, '2019-11-08'),
    ('Richard Jackson', 'Finance', 91000.00, '2017-03-22'),
    ('Elizabeth White', 'HR', 69500.00, '2020-12-10'),
    ('Charles Harris', 'IT', 98000.00, '2016-10-05'),
    ('Margaret Clark', 'Marketing', 67000.00, '2021-02-28'),
    ('Joseph Lewis', 'Finance', 84000.00, '2018-09-17'),
    ('Nancy Lee', 'HR', 72000.00, '2019-07-12'),
    ('Thomas Walker', 'IT', 89500.00, '2017-08-30'),
    ('Karen Hall', 'Marketing', 70500.00, '2020-05-19'),
    ('Daniel Allen', 'Finance', 93500.00, '2016-04-08'),
    ('Sandra Young', 'HR', 68500.00, '2021-10-22'),
    ('Paul Hernandez', 'IT', 99000.00, '2018-11-14'),
    ('Ashley King', 'Marketing', 72500.00, '2019-03-25'),
    ('Mark Wright', 'Finance', 87000.00, '2017-12-07'),
    ('Donna Scott', 'HR', 76000.00, '2020-02-16'),
    ('Steven Green', 'IT', 94000.00, '2016-01-30'),
    ('Michelle Adams', 'Marketing', 69000.00, '2021-08-11'),
    ('Andrew Nelson', 'Finance', 90000.00, '2018-05-04'),
    ('Rebecca Carter', 'HR', 71500.00, '2019-10-29');

SELECT MAX(salary) as maximum_salary
    FROM employees
    WHERE department_name = 'HR'
;



SELECT * 
    FROM employees WHERE salary > (SELECT * as maximum_salary
    FROM employees
    WHERE department_name = 'HR')
    ;






























