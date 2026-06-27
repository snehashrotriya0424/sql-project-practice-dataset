-- what is the total revenue generated.
select sum(orders.quantity* products.price)as revenue
from products join orders 
on orders.product_id= products.product_id;
