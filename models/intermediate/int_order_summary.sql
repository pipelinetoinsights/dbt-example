WITH order_summary AS (
    SELECT
        customer_id,
        order_status,
        COUNT(order_id) AS total_orders,
        SUM(order_value) AS total_revenue,
        MIN(order_date) AS first_order_date,
        MAX(order_date) AS last_order_date
    FROM {{ ref('stg_orders') }}
    GROUP BY customer_id, order_status
)
SELECT * FROM order_summary
