

  create or replace table `unique-arbor-326717`.`test`.`my_first_dbt_model`
  
  
  OPTIONS()
  as (
    /*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

 

-- , alias='first_model', schema='dbt_test'  , database='ivory-mountain-326811'


with source_data as (

    select 1 as id
    union all
    select null as id
    union all
    select 3 as id



)

select * 
-- , True as first_variable
from source_data
-- where id is not null
-- where id >= 1

/*
    Uncomment the line below to remove records with null `id` values
*/
  );
    