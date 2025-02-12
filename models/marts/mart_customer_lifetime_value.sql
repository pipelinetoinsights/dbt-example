WITH customer_lifetime AS (
    SELECT
        c.customer_id,
        c.first_name,
        c.last_name,
        o.order_status,
        o.total_orders,
        o.total_revenue,
        o.first_order_date,
        o.last_order_date
    FROM {{ ref('stg_customers') }} c
    LEFT JOIN {{ ref('int_order_summary') }} o ON c.customer_id = o.customer_id
)
SELECT * FROM customer_lifetime
