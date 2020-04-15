{% snapshot orders_snapshot %}
    {{
        config(
          target_schema='raw',
          strategy='check',
          unique_key='o_orderkey',
          check_cols=['o_custkey',
                      'o_orderstatus',
                      'o_totalprice',
                      'o_orderdate',
                      'o_orderpriority',
                      'o_clerk',
                      'o_shippriority',
                      'o_comment']
        )
    }}
    
    select * from {{ ref('orders') }}
    
{% endsnapshot %}