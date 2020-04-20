{{ 
    config(
        materialized='view',
        tags='stg'
    ) 
}}

select
  r_regionkey,
  r_name,
  r_comment
from {{ ref('raw_region') }}