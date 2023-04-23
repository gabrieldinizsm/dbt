{{ config(materialized='table') }}

with assinantes as (
    select *
    from {{source('BI_STG', 'STG_DIM_ASSINANTE')}}
)
select *
from assinantes