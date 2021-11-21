{% snapshot orders_snapshot_remo %}

    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='O_ORDERKEY',
		  check_cols='all'
        )
    }}

    select * from {{ source('tpch_sf001', 'orders') }}

{% endsnapshot %}