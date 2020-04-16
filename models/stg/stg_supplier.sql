{{ 
    config(
        materialized='view'
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
from {{ ref('raw_supplier') }}
left join {{ ref('raw_nation') }} on s_nationkey = n_nationkey
left join {{ ref('raw_region') }} on n_regionkey = r_regionkey