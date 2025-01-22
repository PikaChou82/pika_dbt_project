with invalid_id as (
   SELECT *
FROM {{ ref('stg_orders') }}
RIGHT JOIN {{ref('stg_customers')}} ON stg_orders.customer = stg_customers.customer_name
WHERE customer IS NOT NULL
)

select count(*)
from invalid_id
having count(*) > 0