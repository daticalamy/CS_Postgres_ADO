--liquibase formatted sql

--changeset amy.smith:get_pg_films_02 labels:v0.1.0 endDelimiter:$$ runOnChange:true
CREATE OR REPLACE PROCEDURE get_pg_films_02()
 LANGUAGE plpgsql
AS $procedure$
BEGIN
    SELECT id FROM pg_films_02;
END;
$procedure$
; 
--rollback DROP PROCEDURE get_pg_films_02;