WITH orders_payments AS (
    SELECT
        o.customer_id,
        o.order_status,
        o.total_revenue,
        o.first_order_date,
        o.last_order_date,
        p.total_paid,
        p.final_payment_status
    FROM {{ ref('int_order_summary') }} o
    LEFT JOIN {{ ref('int_payment_summary') }} p ON o.customer_id = p.customer_id
)
SELECT * FROM orders_payments
