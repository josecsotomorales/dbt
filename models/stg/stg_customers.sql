{{ 
    config(
        materialized='view'
    ) 
}}

select * from {{ ref('customers') }}