-- which product category generates the most revenue. 

select orders .product_id,sum(orders.quantity* products.price) as revenue, products.product_name
from products
join
orders
on products.product_id= orders.product_id
group by orders.product_id, products.product_name
order by revenue desc limit 5;
 