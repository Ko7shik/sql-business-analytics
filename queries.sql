-- View full dataset
SELECT * FROM sales_data;

-- Total revenue
SELECT 
    SUM(quantity * price) AS total_revenue
FROM sales_data;

-- Revenue by product
SELECT 
    product,
    SUM(quantity * price) AS revenue
FROM sales_data
GROUP BY product
ORDER BY revenue DESC;
-- Revenue by region
SELECT
    region,
    SUM(quantity * price) AS regional_revenue
FROM sales_data
GROUP BY region
ORDER BY regional_revenue DESC;
-- Revenue by category
SELECT
    category,
    SUM(quantity * price) AS category_revenue
FROM sales_data
GROUP BY category
ORDER BY category_revenue DESC;
-- Monthly revenue trend
SELECT
    strftime('%Y-%m', order_date) AS month,
    SUM(quantity * price) AS monthly_revenue
FROM sales_data
GROUP BY month
ORDER BY month;
-- Top selling products by quantity
SELECT
    product,
    SUM(quantity) AS total_units_sold
FROM sales_data
GROUP BY product
ORDER BY total_units_sold DESC;