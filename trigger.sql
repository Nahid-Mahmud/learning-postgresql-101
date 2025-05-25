-- Active: 1747545730198@@localhost@5432@ph
CREATE TABLE my_users (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE
);

INSERT INTO my_users (name, email)
VALUES 
     ('John Doe', 'john.doe@example.com'),
    ('Jane Smith', 'jane.smith@example.com'),
    ('Michael Johnson', 'michael.johnson@example.com'),
    ('Emily Williams', 'emily.williams@example.com'),
    ('David Brown', 'david.brown@example.com'),
    ('Sarah Miller', 'sarah.miller@example.com'),
    ('Robert Wilson', 'robert.wilson@example.com'),
    ('Jennifer Taylor', 'jennifer.taylor@example.com'),
    ('William Davis', 'william.davis@example.com'),
    ('Jessica Anderson', 'jessica.anderson@example.com');

CREATE TABLE deleted_users_log (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    deleted_at TIMESTAMP 
);
SELECT * FROM my_users;
SELECT * FROM deleted_users_log;




CREATE or REPLACE FUNCTION log_deleted_user()
RETURNS TRIGGER
LANGUAGE PLPGSQL
AS
$$
BEGIN
    INSERT INTO deleted_users_log
    (user_id, deleted_at)
     VALUES 
     (OLD.id,NOW());
    RAISE NOTICE 'User with ID % deleted at %', OLD.id, NOW();
    RETURN OLD;
END;
$$;




CREATE TRIGGER save_deleted_user
    BEFORE DELETE
    on my_users
    FOR EACH ROW
    EXECUTE FUNCTION log_deleted_user();


DELETE FROM my_users
WHERE id = 1;
