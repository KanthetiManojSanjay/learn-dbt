
with dbt__CTE__INTERNAL_test as (
select 
    sum(case when id is null then 1 else 0 end) / count(*) as total_nulls
from `unique-arbor-326717`.`test`.`my_first_dbt_model`
having sum(case when id is null then 1 else 0 end) / count(*) > .4
)select count(*) from dbt__CTE__INTERNAL_test