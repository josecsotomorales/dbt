{{ 
    config(
        materialized='incremental',
        unique_key='o_orderkey',
        tags=['rpt', 'fct']
    ) 
}}

select 
  o_orderkey,
  o_custkey,
  o_orderstatus,
  o_totalprice,
  o_orderdate,
  o_orderpriority,
  o_clerk,
  o_shippriority,
  o_comment 
from {{ ref('stg_orders') }}