-- Use the `ref` function to select from other models

select *
from COMBINE_DW.PUBLIC.my_first_dbt_model
where id = 1