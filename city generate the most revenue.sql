-- which city generate the most revenue. 

SELECT 
    SUM(orders.quantity * products.price) AS revenue,
    customers.city AS city
FROM
    orders
        JOIN
    products ON orders.product_id = products.product_id
        JOIN
    customers ON orders.customer_id = customers.customer_id
GROUP BY city
ORDER BY revenue DESC
LIMIT 5;