{{ 
    config(
        materialized='table',
        tags='raw'
    ) 
}}

select * from {{ source('sf_sample_data', 'customer') }}