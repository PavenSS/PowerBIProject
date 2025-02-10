SELECT dim_stores.store_type, SUM(orders.product_quantity * dim_products.cost_price) AS total_revenue
FROM orders
JOIN dim_stores ON orders.store_code = dim_stores.store_code
JOIN dim_date ON orders.order_date = dim_date.date
JOIN dim_products ON orders.product_code = dim_products.product_code
WHERE dim_stores.country = 'Germany' AND dim_date.year = 2022
GROUP BY dim_stores.store_type
ORDER BY total_revenue DESC
LIMIT 1;