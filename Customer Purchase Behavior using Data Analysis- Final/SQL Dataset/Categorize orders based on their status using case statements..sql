#7. Categorize orders based on their status use case statements.
use final_project;
select
order_id,
customer_id,
order_date,
order_status,
case
when order_status = '4' then 'completed'
when order_status = '3' then 'shipped'
when order_status = '2' then 'cancelled'
when order_status = '1' then 'returned order'
else 'pending orders'
end as order_category
from
orders; 