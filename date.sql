-- Active: 1747545730198@@localhost@5432@ph@public
SELECT * FROM student;

SHOW timezone;

-- show timestamp

SELECT now();


CREATE TABLE timeZ (ts TIMESTAMP without TIME zone ,tsz TIMESTAMP with time zone );
SELECT * FROM timeZ;


INSERT INTO timeZ (ts, tsz) VALUES 
    ('2023-05-21 10:30:00', '2023-05-21 10:30:00')
    ;


SELECT CURRENT_DATE;

SELECT now()::date;  

SELECT now()::time;  

SELECT to_char(now(),'dd/mm/yyyy');


SELECT to_char(now(),'DDD');


SELECT to_char(now(),'MONTH');


SELECT CURRENT_DATE - DATE '2000-01-01';

SELECT CURRENT_DATE - INTERVAL '1 year';

SELECT age(CURRENT_DATE , '01-01-2000');


SELECT *, age(CURRENT_DATE, dob) as "Student Age" FROM student;

SELECT extract( month from '01-01-2025'::date);

