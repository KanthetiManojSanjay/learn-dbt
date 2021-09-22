
    
    




with all_values as (

    select distinct
        id as value_field

    from `unique-arbor-326717`.`test`.`my_first_dbt_model`

),

validation_errors as (

    select
        value_field

    from all_values
    where value_field not in (
        1,3
    )
)

select count(*) as validation_errors
from validation_errors


