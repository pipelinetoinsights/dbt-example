WITH customers AS (
    SELECT
        customer_id,
        LOWER(email) AS email,
        first_name,
        last_name,
        country
    FROM {{ source('raw_data', 'customers') }}
)
SELECT * FROM customers
