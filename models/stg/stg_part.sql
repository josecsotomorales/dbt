{{ 
    config(
        materialized='view'
    ) 
}}

select * from {{ ref('part') }}