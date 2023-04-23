{{ config(materialized='table') }}

with leads as (
    select *
    from {{source('BI_STG', 'STG_DIM_LEAD')}}
)
select *
from leads