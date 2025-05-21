-- Active: 1747545730198@@localhost@5432@ph
SELECT * FROM person2;

ALTER TABLE person2
    ADD COLUMN country VARCHAR(300);


INSERT INTO person2 (id, user_name,age,email)
VALUES (6, 'John Doe', 30, 'email@gmai.xom')

ALTER TABLE person2
    DROP COLUMN email;
-- The column email is dropped from the table person2

ALTER TABLE person2
    RENAME COLUMN user_name TO name;

ALTER TABLE person2
    ALTER COLUMN name TYPE VARCHAR(100);


ALTER TABLE person2
    ALTER COLUMN user_age set not null;


ALTER TABLE person2
    ALTER COLUMN user_age drop not null;


ALTER TABLE person2
    add constraint unique_person2_country UNIQUE(country);


ALTER TABLE person2
    DROP constraint unique_person2_country;

TRUNCATE TABLE person2;

SELECT * FROM person2;
