CREATE OR REPLACE PROCEDURE categorysave(
    IN in_name VARCHAR,
    INOUT out_id INTEGER DEFAULT NULL::INTEGER
)
LANGUAGE plpgsql
AS $BODY$ 
BEGIN
    INSERT INTO categories (
        name
    )
    VALUES (
        in_name
    )
    RETURNING id
	INTO out_id;
END;
$BODY$;