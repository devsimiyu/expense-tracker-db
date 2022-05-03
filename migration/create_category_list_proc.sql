CREATE OR REPLACE FUNCTION categorylist()
RETURNS TABLE (id INTEGER, name VARCHAR) AS 
$func$
BEGIN
    RETURN QUERY
    SELECT *
    FROM categories;
END
$func$ LANGUAGE plpgsql;
