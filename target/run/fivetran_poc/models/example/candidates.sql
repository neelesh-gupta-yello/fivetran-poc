

      create or replace transient table COMBINE_DW.PUBLIC.candidates  as
      (

with source_data as (
    
    select * , 'poc_client_1_public' as client_name
    from FIVETRAN_DATABASE.poc_client_1_public.candidates
    union all
    
    select * , 'poc_client_2_public' as client_name
    from FIVETRAN_DATABASE.poc_client_2_public.candidates
    
    
)
select *
from source_data
      );
    