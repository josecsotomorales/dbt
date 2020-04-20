{{ 
    config(
        materialized='incremental',
        unique_key='c_custkey',
        tags=['rpt', 'dim']

    ) 
}}

select
    c_custkey,
    c_name,
    c_address,
    c_nationkey,
    c_phone,
    c_acctbal,
    c_mktsegment,
    c_comment,
    n_name,
    r_name
from {{ ref('stg_customers') }}