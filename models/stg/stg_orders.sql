{{ 
    config(
        materialized='view',
        tags='stg'
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
from {{ ref('raw_orders') }}