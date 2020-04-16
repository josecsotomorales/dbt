{{ 
    config(
        materialized='view'
    ) 
}}

select
  r_regionkey,
  r_name,
  r_comment
from {{ ref('raw_region') }}