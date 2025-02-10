SELECT dim_products.category,
    SUM(orders.product_quantity * dim_products.cost_price) AS total_revenue
FROM orders
JOIN dim_products ON orders.product_code = dim_products.product_code
JOIN dim_stores ON orders.store_code = dim_stores.store_code
JOIN dim_date ON orders.order_date = dim_date.date
WHERE dim_stores.country_region = 'Wiltshire' 
  AND dim_date.year = 2021
GROUP BY dim_products.category
ORDER BY total_revenue DESC
LIMIT 1;