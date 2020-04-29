{{
  config(
    severity='warn'
    )
}}

select * from {{ ref('fct_parts') }} where ps_supplycost < 0