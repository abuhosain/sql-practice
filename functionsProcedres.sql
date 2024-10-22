-- Active: 1729274956860@@127.0.0.1@5432@ph@public


SELECT * FROM employees;


CREATE Function emp_count()
RETURNS INT
LANGUAGE SQL
AS
$$
    SELECT count(*) FROM employees;
$$

-- delete employe
CREATE OR REPLACE Function emp_delete()
RETURNS void
LANGUAGE SQL
AS
$$
    DELETE  FROM employees WHERE employee_id = 8 ;
$$;



CREATE OR REPLACE Function emp_delete_id(p_emp_id INT)
RETURNS void
LANGUAGE SQL
AS
$$
    DELETE  FROM employees WHERE employee_id = p_emp_id ;
$$;





SELECT emp_delete()

SELECT emp_delete_id(7)

SELECT emp_count();


CREATE Procedure remove_employe()
LANGUAGE plpgsql
AS
$$
    BEGIN
        DELETE FROM employees WHERE employee_id = 6;
    END
$$;
CALL remove_employe();

CREATE Procedure remove_employe()
LANGUAGE plpgsql
AS
$$
    BEGIN
        DELETE FROM employees WHERE employee_id = 6;
    END
$$;
CALL remove_employe();



CREATE Procedure remove_employe_with_id(p_emp_id INT)
LANGUAGE plpgsql
AS
$$
    DECLARE 
    test_var int; 
    BEGIN
        SELECT employee_id INTO test_var FROM employees WHERE employee_id = p_emp_id;
        DELETE FROM employees WHERE employee_id = test_var;

        RAISE NOTICE 'Employee removed successfully';
    END
$$;
CALL remove_employe_with_id(4);
