{{ config(materialized='table') }}

{% set schema_name_query %}
  select distinct TABLE_SCHEMA from {{ source( 'information_sch' , 'tables' ) }}
  where table_schema ilike '%POC%'
{% endset %}

{% if execute %}
    {% set results = run_query(schema_name_query) %}
    {% set db_names = results.columns[0].values() %}
{% else %}
    {% set db_names = [] %}
{% endif %}

{% set table_name = 'events' %}

with source_data as (
    {% for db in db_names %}
    select * , '{{db}}' as client_name
    from FIVETRAN_DATABASE.{{db}}.{{table_name}}
    {% if not loop.last %}union all{% endif %}
    {% endfor %}
)
select *
from source_data
