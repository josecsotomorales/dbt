{{ 
    config(
        materialized='view'
    ) 
}}

select * from {{ ref('supplier') }}