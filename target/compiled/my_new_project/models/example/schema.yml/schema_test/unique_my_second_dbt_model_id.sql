
    
    



select count(*) as validation_errors
from (

    select
        id

    from COMBINE_DW.PUBLIC.my_second_dbt_model
    where id is not null
    group by id
    having count(*) > 1

) validation_errors


