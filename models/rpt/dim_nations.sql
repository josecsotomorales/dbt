{{ 
    config(
        materialized='incremental',
        unique_key='n_nationkey',
        tags=['rpt', 'dim']
    ) 
}}

select
  n_nationkey,
  n_name,
  n_regionkey,
  n_comment
from {{ ref('stg_nation') }}