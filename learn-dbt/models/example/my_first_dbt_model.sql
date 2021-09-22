
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }} 

-- , alias='first_model', schema='dbt_test'  , database='ivory-mountain-326811' , post_hook='grant select on {{this}} to role analyst' , tags=["nightly","example"]

-- CTE(Common Table Expression)
with source_data as (

    select 1 as id , 'NY' as state, '2020-03-01 00:01:00.000' as updated_at
    union all
    select null as id , 'CT' as state, '2020-02-01 00:00:00.000' as updated_at
    union all
    select 3 as id, 'VT' as state, '2020-02-01 00:00:00.000' as updated_at



)

select * 
-- , {{ var('my_first_variable')}} as first_variable
from source_data
-- where id is not null
-- where id >= {{var('my_third_variable')}}
--macro
--  {{ group_by(3)}}

/*
    Uncomment the line below to remove records with null `id` values
*/


