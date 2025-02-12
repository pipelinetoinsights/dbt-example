WITH orders AS (
    SELECT
        order_id,
        customer_id,
        status AS order_status,
        total_amount::NUMERIC AS order_value,
        order_date::DATE AS order_date
    FROM {{ source('raw_data', 'orders')}}
)
SELECT * FROM orders
