with source as (
    select * from {{ source('pika_dbt_project', 'raw_orders') }}
),
renamed as (
    select
        id as order_id,
        customer as customer,
        ordered_at as order_date,
        store_id as store_id
    from source
)
select * from renamed