
    
    



select count(*) as validation_errors
from COMBINE_DW.PUBLIC.events
where _FIVETRAN_ID is null


