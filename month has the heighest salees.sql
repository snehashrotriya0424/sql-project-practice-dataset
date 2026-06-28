-- which month has the heighest salees

SELECT 
    MONTH(orders.order_date) AS order_month,
    SUM(orders.quantity * products.price) AS total_spent
FROM
    orders
        JOIN
    products ON products.product_id = orders.product_id
GROUP BY order_month
ORDER BY total_spent DESC;