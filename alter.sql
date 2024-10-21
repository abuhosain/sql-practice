-- Active: 1729274956860@@127.0.0.1@5432@ph
 select * from person2;
  
 ALTER TABLE person2 
    ADD COLUMN email VARCHAR(50) DEFAULT 'default@gamil.com' NOT NULL;

 ALTER TABLE person2 
    DROP COLUMN email;

INSERT into person2 values(7, "sdfsdds", 45);

ALTER TABLE person2
    RENAME COLUMN age to user_age;

ALTER TABLE person2
    Alter COLUMN user_name type VARCHAR(50);

ALTER TABLE person2
alter COLUMN user_age set NOT NULL;

ALTER TABLE person2  
    ADD constraint unique_person2_user_age PRIMARY KEY(id);

ALTER TABLE person2
    DROP constraint unique_person2_user_age
  
TRUNCATE TABLE person2; 