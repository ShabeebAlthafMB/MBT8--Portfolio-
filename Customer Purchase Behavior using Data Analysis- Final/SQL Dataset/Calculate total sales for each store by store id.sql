Use final_project;
#2. Calculate the total sales for each store using aggregate functions like SUM and GROUP BY.

SELECT 
    store_id, 
    SUM(total_sales) AS total_sales
FROM 
    order_items
GROUP BY 
    store_id;
    
  