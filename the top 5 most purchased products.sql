-- who are the top 5 most purchased products. 

 select orders.product_id as orders_product_id,
 sum(orders.quantity) as order_quantity,
products.product_name as product_name
from products
join
orders
on orders.product_id = products.product_id
group by orders_product_id, product_name
order by order_quantity desc limit 5;