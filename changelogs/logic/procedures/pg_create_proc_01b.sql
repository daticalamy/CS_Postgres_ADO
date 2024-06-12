--liquibase formatted sql

--changeset amy.smith:get_pg_films_01b labels:v0.1.0 endDelimiter:$$
CREATE OR REPLACE PROCEDURE get_pg_films_01b()
 LANGUAGE plpgsql
AS $procedure$
BEGIN
    SELECT id FROM pg_films_01;
END;
$procedure$
;
--rollback DROP PROCEDURE get_pg_films_01b;