{{ 
    config(
        materialized='view',
        tags='stg'
    ) 
}}

select 
  p_partkey,
  p_name,
  p_mfgr,
  p_brand,
  p_type,
  p_size,
  p_container,
  p_retailprice,
  p_comment
from {{ ref('raw_part') }}