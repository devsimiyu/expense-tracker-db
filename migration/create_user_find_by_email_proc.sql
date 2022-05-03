CREATE OR REPLACE FUNCTION userfindbyemail(in_email VARCHAR)
RETURNS TABLE (id INTEGER, email VARCHAR, role VARCHAR, active BOOLEAN, password VARCHAR) AS 
$func$
BEGIN
    RETURN QUERY
    SELECT *
    FROM users u
    WHERE u.email = in_email;
END
$func$ LANGUAGE plpgsql;
