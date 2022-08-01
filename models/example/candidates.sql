{{ config(materialized='table') }}

{%- set db_names = ["poc_client_1_public","poc_client_2_public"]    -%}
{% set table_name = 'candidates'%}

with source_data as (
    {% for db in db_names %}
    select * , '{{db}}' as client_name
    from FIVETRAN_DATABASE.{{db}}.{{table_name}}
    {% if not loop.last %}union all{% endif %}
    {% endfor %}
)
select *
from source_data
