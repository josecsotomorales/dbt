{{ 
    config(
        materialized='table'
    ) 
}}

select * from {{ source('sf_sample_data', 'lineitem') }}