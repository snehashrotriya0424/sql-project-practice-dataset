-- which product category sells thr most units
 SELECT 
    products.category, SUM(orders.quantity) AS total_unit
FROM
    products
        JOIN
    orders ON products.product_id = orders.product_id
GROUP BY products.category
ORDER BY total_unit DESC;