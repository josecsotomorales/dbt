{{ 
    config(
        materialized='view'
    ) 
}}

select
    left(country, 2) as country,
    left(name, 128) as name,
    latitude,
    longitude 
from {{ ref('countries') }}