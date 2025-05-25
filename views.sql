-- Active: 1747545730198@@localhost@5432@ph



SELECT * FROM employees;

CREATE VIEW dept_avg_salary
    AS
    SELECT department_name, avg(salary)
    FROM employees
    GROUP BY department_name
    ;

SELECT * FROM dept_avg_salary;















