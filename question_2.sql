SELECT dim_date.month_name AS month, SUM(orders.product_quantity * dim_products.cost_price) AS total_revenue
FROM orders
JOIN dim_date ON orders.order_date = dim_date.date
JOIN dim_products ON orders.product_code = dim_products.product_code
WHERE dim_date.year = 2022
GROUP BY month
ORDER BY total_revenue DESC
LIMIT 1;