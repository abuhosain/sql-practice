
-- CREATE TRIGGER trigger_name
-- {BEFORE | AFTER | INSTEAD OF} [INSERT | UPDATE | DELETE TRUNCATE]
-- ON table_name
-- [FOR EACH ROW]
-- EXECUTE FUNCTION function_name();

CREATE TABLE my_users(
    user_name VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO my_users VALUES('Mezba', 'mex@gmail.com'),('min', 'min@gmail.com');

SELECT * FROM my_users;

CREATE Table deleted_users_audite
(
    deleted_user_name VARCHAR(50),
    deletedAt TIMESTAMP
);

SELECT * FROM deleted_users_audite;


CREATE or REPLACE Function save_deleted_user()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
    BEGIN
        INSERT INTO deleted_users_audite VALUES(OLD.user_name, now());
        RAISE NOTICE 'Deleted user audit log created';
        RETURN OLD;
    END
$$


CREATE Trigger save_deleted_user_trigger
BEFORE DELETE
ON my_users
FOR EACH ROW
EXECUTE FUNCTION save_deleted_user();


DELETE from my_users WHERE user_name = 'Mezba'