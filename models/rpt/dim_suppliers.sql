{{ 
    config(
        materialized='incremental',
        unique_key='s_suppkey',
        tags=['rpt', 'dim']
    ) 
}}

select
    s_suppkey,
    s_nationkey,
    n_regionkey,
    s_name,
    s_address,
    n_name,
    r_name,
    s_phone,
    s_acctbal
from {{ ref('stg_supplier') }}