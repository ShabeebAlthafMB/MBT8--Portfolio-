#6. Calculate the number of days each order took to ship using date functions.

select
order_id,
order_date,
shipped_date,
(shipped_date - order_date) AS days_to_ship
from
orders;