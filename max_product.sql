SELECT products.product_name, MAX(quantity) AS max_product
FROM order_details
INNER JOIN products ON order_details.product_id = products.product_id
GROUP BY products.product_name