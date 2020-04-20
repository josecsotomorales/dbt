{{ 
    config(
        materialized='table',
        tags=['rpt', 'dim']
    ) 
}}

select
    country,
    name,
    latitude,
    longitude 
from 
{{ ref('stg_countries') }}