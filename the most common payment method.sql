-- what is the most common payment method

SELECT
    payment_method,
    COUNT(DISTINCT order_id) AS count_of_payment
FROM
    orders
GROUP BY payment_method
ORDER BY count_of_payment DESC;

