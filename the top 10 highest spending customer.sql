-- what are the top 10 highest spending customer. 

SELECT 
    customer_id,
    SUM(orders.quantity * products.price) AS total_spent
FROM
    orders
        JOIN
    products ON orders.product_id = products.product_id
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;