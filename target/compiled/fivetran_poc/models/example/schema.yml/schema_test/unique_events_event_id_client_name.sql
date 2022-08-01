
    
    



select count(*) as validation_errors
from (

    select
        event_id , client_name

    from COMBINE_DW.PUBLIC.events
    where event_id , client_name is not null
    group by event_id , client_name
    having count(*) > 1

) validation_errors


