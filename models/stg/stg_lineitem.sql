{{ 
    config(
        materialized='view'
    ) 
}}

select * from {{ ref('lineitem') }}