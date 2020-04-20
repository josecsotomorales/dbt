{{ 
    config(
        materialized='view',
        tags='stg'
    ) 
}}

select
  sha2(array_to_string(array_construct(l_orderkey, l_partkey, l_suppkey, l_shipdate, l_commitdate, l_receiptdate), '')) as l_lineitemkey,
  l_orderkey,
  l_partkey,
  l_suppkey,
  l_linenumber,
  l_quantity,
  l_extendedprice,
  l_discount,
  l_tax,
  l_returnflag,
  l_linestatus,
  l_shipdate,
  l_commitdate,
  l_receiptdate,
  l_shipinstruct,
  l_shipmode,
  l_comment
from {{ ref('raw_lineitem') }}