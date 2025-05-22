-- Active: 1747545730198@@localhost@5432@ph
CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL
);


CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
    ON DELETE  set DEFAULT 
    DEFAULT (0)
);

INSERT INTO "user" (user_name) VALUES
('alex_smith'),
('maria_jones'),
('john_doe'),
('sara_lee'),
('mike_johnson');

INSERT INTO "user" ("id", "user_name") VALUES (0,'default_user');

SELECT * from "user";


INSERT INTO post (title, user_id) VALUES
('Getting started with PostgreSQL', 1),
('My travel adventures', 2),
('PostgreSQL foreign keys explained', 1),
('Favorite recipes', 4),
('Weekend hiking trip', 3),
('Tech review: latest gadgets', 5),
('Database optimization tips', 1),
('My photography portfolio', 2);







ALTER TABLE post
    ALTER COLUMN user_id set NOT NULL;


DELETE FROM "user"
WHERE id = 1;




DROP TABLE IF EXISTS post;
DROP TABLE IF EXISTS "user";

SELECT * FROM post;
SELECT * FROM "user";














