{{ 
    config(
        materialized='incremental',
        unique_key='ps_partkey'
    ) 
}}

select
  ps_partkey,
  ps_suppkey,
  ps_availqty,
  ps_supplycost,
  ps_comment
from {{ ref('stg_partsupp') }}