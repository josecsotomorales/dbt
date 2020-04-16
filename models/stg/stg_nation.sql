{{ 
    config(
        materialized='view'
    ) 
}}

select
  n_nationkey,
  n_name,
  n_regionkey,
  n_comment
from {{ ref('raw_nation') }}