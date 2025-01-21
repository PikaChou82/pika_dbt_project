with source as (
    select * from {{ source('pika_dbt_project', 'raw_orders') }}
),
renamed as (
    select
        id as order_id,
        customer as customer
    from source
)
select * from renamed