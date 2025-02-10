SELECT
  dim_stores.store_type,
  ROUND(
    CAST(
        SUM(orders.product_quantity * dim_products.cost_price) AS numeric)
        , 2) AS total_sales,
  ROUND(
    CAST(
      SUM(orders.product_quantity * dim_products.cost_price) AS numeric
    ) / 
    CAST(
      (SELECT SUM(orders.product_quantity * dim_products.cost_price) 
       FROM orders 
       JOIN dim_products ON orders.product_code = dim_products.product_code) 
      AS numeric
    ) * 100, 2
  ) AS percentage_of_total_sales,
  COUNT(orders.order_time) AS order_count
FROM orders
JOIN dim_stores ON orders.store_code = dim_stores.store_code
JOIN dim_date ON orders.order_date = dim_date.date
JOIN dim_products ON orders.product_code = dim_products.product_code
GROUP BY dim_stores.store_type;