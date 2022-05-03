CREATE OR REPLACE FUNCTION categoryfind(in_id INTEGER)
RETURNS TABLE (id INTEGER, name VARCHAR) AS 
$func$
BEGIN
    RETURN QUERY
    SELECT *
    FROM categories c
    WHERE c.id = in_id;
END
$func$ LANGUAGE plpgsql;
