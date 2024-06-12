--liquibase formatted sql

--changeset amy.smith:pg_films_vw_01 labels:v0.1.0 endDelimiter:$$
CREATE OR REPLACE VIEW pg_films_vw_01 AS
 SELECT ID, NAME, KIND from pg_films_01;
--rollback DROP VIEW pg_films_vw_01;