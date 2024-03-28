SELECT
    orders.customer_id,
    COUNT(*) AS buyurtmalar_soni,
    customers.company_name,
    MAX(orders.order_date) AS eng_oxirgi_buyurtma_sanasi
FROM
    orders
JOIN
    customers ON orders.customer_id = customers.customer_id
GROUP BY
    orders.customer_id, customers.company_name
ORDER BY
    COUNT(*) DESC
LIMIT 1;
