-- what is the average spending per customer
 
with  customer_table as
   ( SELECT
        customer_id,
        SUM(orders.quantity*products.price) AS total_spent
    FROM
        orders
         JOIN
        products ON products.product_id = orders.product_id
    GROUP BY customer_id)
    SELECT
 ROUND(AVG(total_spent),2) AS avg_spent
 FROM customer_table;
