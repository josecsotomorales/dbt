{{ 
    config(
        materialized='incremental',
        unique_key='p_partkey',
        tags=['rpt', 'dim']
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
from {{ ref('stg_part') }}