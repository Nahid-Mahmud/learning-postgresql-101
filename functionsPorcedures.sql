-- Active: 1747545730198@@localhost@5432@ph

SELECT * FROM employees;

CREATE Function emp_count()
RETURNS INT
LANGUAGE SQL
AS
$$

SELECT COUNT(*) FROM employees;

$$

;




SELECT emp_count();


SELECT * FROM employees;



CREATE PROCEDURE remove_employee2(id INT)
    LANGUAGE plpgsql
    AS
    $$
    BEGIN
    DELETE FROM employees
    WHERE employee_id = id;
    RAISE NOTICE 'Employee with ID % has been removed.', id;
    END;
    $$;


CALL remove_employee2(2);










