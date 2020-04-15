{{ 
    config(
        materialized='view'
    ) 
}}

select * from {{ ref('region') }}