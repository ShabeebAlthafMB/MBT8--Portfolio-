#3.Find the products that have never been ordered

SELECT product_id, product_name
FROM products
WHERE product_id NOT IN (
    SELECT DISTINCT product_id
    FROM order_items
);