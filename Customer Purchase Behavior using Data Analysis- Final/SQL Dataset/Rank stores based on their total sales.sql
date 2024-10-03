#5. Rank stores based on their total sales using window functions like ROW_NUMBER() or RANK()

select
store_id,
sum(total_sales) as total_sales,
row_number() over (order by sum(total_sales) desc) as sales_rank
from order_items
group by store_id;

select
store_id,
sum(total_sales) as total_sales,
rank() over (order by sum(total_sales) desc) as sales_rank
from order_items
group by store_id;