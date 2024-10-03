#8. Retrieve all orders along with the product names and store names.
select
oi.order_id,
oi.store_id,
oi.product_id,
p.product_name,
oi.quantity,
oi.list_price,
oi.discount,
oi.total_sales,
o.customer_id,
o.order_date,
o.required_date,
o.shipped_date
from 
order_items oi
join
products p ON oi.product_id = p.product_id
join
orders o on oi.order_id = o.order_id
join
stores s on oi.store_id = s.store_id;