--liquibase formatted sql

--changeset amy.smith:pg_films_01_insert labels:v0.1.0 context:!DEV
insert into pg_films_01 (id, name, kind) values (1, 'Funny Movie', 'Comedy');
--rollback DELETE FROM pg_films_01 where id = 1;