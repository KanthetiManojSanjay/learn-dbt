
    
    




select count(*) as validation_errors
from (
    select id as id from `unique-arbor-326717`.`test`.`my_second_dbt_model`
) as child
left join (
    select id as id from `unique-arbor-326717`.`test`.`my_first_dbt_model`
) as parent on parent.id = child.id
where child.id is not null
  and parent.id is null


