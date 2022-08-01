
    
    



select count(*) as validation_errors
from (

    select
        id , client_name

    from COMBINE_DW.PUBLIC.candidates
    where id , client_name is not null
    group by id , client_name
    having count(*) > 1

) validation_errors


