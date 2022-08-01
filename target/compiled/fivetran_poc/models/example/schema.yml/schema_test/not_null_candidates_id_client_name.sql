
    
    



select count(*) as validation_errors
from COMBINE_DW.PUBLIC.candidates
where id , client_name is null


