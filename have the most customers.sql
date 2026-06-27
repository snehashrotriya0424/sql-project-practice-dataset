-- which cities have the most customers.

select count(customer_id),city
from 
customer.customers
 group by city
 limit 5;