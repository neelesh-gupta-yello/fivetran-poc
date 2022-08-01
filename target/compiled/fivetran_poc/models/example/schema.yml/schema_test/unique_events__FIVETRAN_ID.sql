
    
    



select count(*) as validation_errors
from (

    select
        _FIVETRAN_ID

    from COMBINE_DW.PUBLIC.events
    where _FIVETRAN_ID is not null
    group by _FIVETRAN_ID
    having count(*) > 1

) validation_errors


