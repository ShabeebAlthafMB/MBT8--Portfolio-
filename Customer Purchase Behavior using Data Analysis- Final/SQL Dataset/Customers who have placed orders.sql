use final_project;

#Basic Select Query
#1. Retrieve all details of customers who have placed orders.
select customers.*
from customers
join orders
on customers.customer_id = orders.customer_id;
