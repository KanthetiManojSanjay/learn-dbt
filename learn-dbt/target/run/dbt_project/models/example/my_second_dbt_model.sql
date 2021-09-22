

  create or replace view `unique-arbor-326717`.`test`.`my_second_dbt_model`
  OPTIONS()
  as -- Use the `ref` function to select from other models

select *
from `unique-arbor-326717`.`test`.`my_first_dbt_model`
-- where id = 1
-- union all
-- select 7 as id;

