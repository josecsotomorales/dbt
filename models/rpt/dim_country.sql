{{ 
    config(
        materialized='table'
    ) 
}}

select
    country,
    name,
    latitude,
    longitude 
from 
{{ ref('stg_countries') }}