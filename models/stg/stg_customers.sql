{{ 
    config(
        materialized='view'
    ) 
}}

select distinct
    c_custkey,
    c_name,
    c_address,
    c_nationkey,
    c_phone,
    c_acctbal,
    c_mktsegment,
    c_comment,
    n_name,
    n_comment,
    r_name,
    r_comment
from {{ ref('raw_customers') }}
left join {{ ref('raw_nation') }} on c_nationkey = n_nationkey
left join {{ ref('raw_region') }} on n_regionkey = r_regionkey