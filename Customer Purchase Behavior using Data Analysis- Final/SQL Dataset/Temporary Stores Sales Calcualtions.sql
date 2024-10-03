#9. Create a temporary table to store intermediate sales calculations.
Create temporary table temp_sales_calculations AS
select
p.product_id,
p.product_name,
sum(oi.quantity * oi.list_price) as total_sales,
count(distinct o.order_id) as total_orders
from
products p
join
order_items oi ON p.product_id = oi.product_id
join
orders o on oi.order_id = o.order_id
group by
p.product_id, p.product_name;

#Select temporary sales calculations
select * from temp_sales_calculations;