{{ 
    config(
        materialized='incremental',
        unique_key='r_regionkey'
    ) 
}}

select
  r_regionkey,
  r_name,
  r_comment
from {{ ref('stg_region') }}