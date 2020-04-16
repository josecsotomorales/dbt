{{ 
    config(
        materialized='view'
    ) 
}}

select
  sha2(array_to_string(array_construct(ps_partkey, ps_suppkey), '')) as ps_partsuppkey,
  ps_partkey,
  ps_suppkey,
  ps_availqty,
  ps_supplycost,
  ps_comment
from {{ ref('raw_partsupp') }}