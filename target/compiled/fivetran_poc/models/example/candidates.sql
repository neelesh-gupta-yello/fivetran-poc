






    
    




with source_data as (
    
    select * , 'POC_CLIENT_1_PUBLIC' as client_name
    from FIVETRAN_DATABASE.POC_CLIENT_1_PUBLIC.candidates
    union all
    
    select * , 'POC_CLIENT_2_PUBLIC' as client_name
    from FIVETRAN_DATABASE.POC_CLIENT_2_PUBLIC.candidates
    
    
)
select *
from source_data