{{ 
    config(
        materialized='incremental',
        unique_key='n_nationkey'
    ) 
}}

select
  n_nationkey,
  n_name,
  n_regionkey,
  n_comment
from {{ ref('stg_nation') }}