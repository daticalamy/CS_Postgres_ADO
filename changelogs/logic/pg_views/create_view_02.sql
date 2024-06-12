--liquibase formatted sql

--changeset amy.smith:pg_films_vw_02 labels:v0.1.0 endDelimiter:$$ runOnChange:true
CREATE OR REPLACE VIEW pg_films_vw_02 AS
 SELECT ID, NAME, KIND from pg_films_02;
--rollback DROP VIEW pg_films_vw_02;