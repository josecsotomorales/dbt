{{ 
    config(
        materialized='view'
    ) 
}}

select * from {{ ref('countries') }}