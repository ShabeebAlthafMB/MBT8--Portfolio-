#4. Write a SQL query to join the staffs table with itself to get staff name, email id and managers name info.
select
s1.staff_name AS staff_name,
s1.email AS staff_email,
s2.staff_name AS manager_name
from
staffs s1
left join
staffs s2
on
s1.manager_id = s2.staff_id;