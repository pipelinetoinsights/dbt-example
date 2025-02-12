WITH payments AS (
    SELECT
        payment_id,
        order_id,
        customer_id,
        payment_method,
        payment_amount::NUMERIC AS payment_value,
        payment_status
    FROM {{ source('raw_data', 'payments') }}
)
SELECT * FROM payments
