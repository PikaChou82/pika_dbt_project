with source as (
    select * from {{ source('pika_dbt_project', 'raw_customers') }}
),
renamed as (
    select
        id as customer_id,
        name as customer_name
    from source
)
select * from renamed