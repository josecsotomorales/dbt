{{ 
    config(
        materialized='view'
    ) 
}}

select
  ps_partkey,
  ps_suppkey,
  ps_availqty,
  ps_supplycost,
  ps_comment
from {{ ref('raw_partsupp') }}