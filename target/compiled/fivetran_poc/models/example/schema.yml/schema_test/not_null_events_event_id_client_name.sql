
    
    



select count(*) as validation_errors
from COMBINE_DW.PUBLIC.events
where event_id , client_name is null


