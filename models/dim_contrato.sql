{{ config(materialized='table') }}

with contratos as (
    select *
    from {{source('BI_STG', 'STG_DIM_CONTRATO')}} 
)
select *
from contratos