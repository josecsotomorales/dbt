{{ 
    config(
        materialized='view'
    ) 
}}

select * from {{ ref('orders') }}