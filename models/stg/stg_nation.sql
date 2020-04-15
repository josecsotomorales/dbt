{{ 
    config(
        materialized='view'
    ) 
}}

select * from {{ ref('nation') }}