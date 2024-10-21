-- Active: 1729274956860@@127.0.0.1@5432@ph@public

CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE SET NULL
);

ALTER TABLE post
    alter COLUMN user_id set NOT NULL

INSERT INTO "user" (username)
    VALUES ('akash'), ('batas'), ('sagor'), ('nodi');


INSERT INTO post (title, user_id) VALUES
    ('Enjoying a sunny day', 2),
    ('Batas just shared a amazing recipe', 1),
    ('Exploring with sagor', 3),
    ('Nodi''s wisdom ', 4);



SELECT * FROM "user";

DROP TABLE post;

DROP Table "user";
 


DELETE FROM "user"
    WHERE id = 4;


SELECT * FROM "user";
SELECT * from post;

SELECT * FROM post
    JOIN "user" on post.user_id = "user".id;


INSERT INTO post(id, title, user_id) VALUES 
    (5, 'this is test post title', NULL);


SELECT * FROM post
   LEFT JOIN "user" on post.user_id = "user".id;

SELECT * FROM post
   RIGHT JOIN "user" on post.user_id = "user".id;


SELECT * FROM post
   FULL OUTER JOIN "user" on post.user_id = "user".id;

