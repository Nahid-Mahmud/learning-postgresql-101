-- Active: 1747545730198@@localhost@5432@ph

SELECT * FROM student;

SELECT grade,  count(*) as "found_item" , ROUND(avg(age),2) as "average_age"
    FROM student
    GROUP BY grade;


SELECT grade,  count(*) as "found_item" , ROUND(avg(age),2) as "average_age"
    FROM student
    GROUP BY grade
    HAVING NOT avg(age) = 20
    ;



SELECT extract(YEAR from dob) as birth_year, count(*) as total_in_each_year
    FROM student
    GROUP BY birth_year
    ;
