--liquibase formatted sql

--changeset amy.smith:get_pg_films_count_02 labels:v0.1.0 endDelimiter:@@ runOnChange:true
CREATE OR REPLACE FUNCTION get_pg_films_count_02()
returns int
language plpgsql
as
$$
declare
   film_count integer; 
begin
   select count(*) 
   into film_count
   from pg_films_02;
   
   return film_count;
end;
$$; 
--rollback DROP FUNCTION get_pg_films_count_02; 