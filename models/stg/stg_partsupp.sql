{{ 
    config(
        materialized='view'
    ) 
}}

select * from {{ ref('partsupp') }}