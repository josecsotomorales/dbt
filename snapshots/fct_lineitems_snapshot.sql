{% snapshot fct_lineitems_snapshot %}
    {{
        config(
          target_schema='rpt',  
          strategy='check',
          unique_key='l_lineitemkey',
          check_cols=[  'l_returnflag',
                        'l_linestatus',
                        'l_shipdate',
                        'l_commitdate',
                        'l_receiptdate',
                        'l_shipinstruct',
                        'l_shipmode' ]
        )
    }}
    
    select * from {{ ref('fct_lineitems') }}
    
{% endsnapshot %}