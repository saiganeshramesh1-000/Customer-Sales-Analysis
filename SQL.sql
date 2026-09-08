CREATE DATABASE customer_sales_analysis;
USE customer_sales_analysis;


DROP TABLE IF EXISTS ecommerce_sales;

CREATE TABLE ecommerce_sales (
    order_id VARCHAR(50),
    order_date DATE,
    customer_id VARCHAR(50),
    product_category VARCHAR(50),
    region VARCHAR(50),
    quantity INT,
    unit_price DECIMAL(10,2),
    discount DECIMAL(5,4),
    payment_method VARCHAR(50),
    delivery_days INT,
    customer_rating DECIMAL(3,2),
    revenue DECIMAL(12,2),
    order_year INT,
    order_month INT,
    order_month_name VARCHAR(20),
    order_weekday VARCHAR(20),
    gross_amount DECIMAL(12,2),
    discount_amount DECIMAL(12,2),
    delivery_speed VARCHAR(30),
    rating_group INT
);
DESCRIBE ecommerce_sales;
SELECT COUNT(*) AS total_rows
FROM ecommerce_sales;
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM ecommerce_sales;
SELECT 
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales;
SELECT 
    ROUND(AVG(revenue), 2) AS average_order_revenue
FROM ecommerce_sales;
SELECT
    product_category,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY product_category
ORDER BY total_revenue DESC;
SELECT
    product_category,
    SUM(quantity) AS total_quantity_sold
FROM ecommerce_sales
GROUP BY product_category
ORDER BY total_quantity_sold DESC;
SELECT
    product_category,
    ROUND(AVG(unit_price), 2) AS average_unit_price
FROM ecommerce_sales
GROUP BY product_category
ORDER BY average_unit_price DESC;
SELECT
    product_category,
    ROUND(AVG(discount) * 100, 2) AS average_discount_percentage
FROM ecommerce_sales
GROUP BY product_category
ORDER BY average_discount_percentage DESC;
SELECT
    region,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY region
ORDER BY total_revenue DESC;
SELECT
    payment_method,
    ROUND(SUM(revenue), 2) AS total_revenue,
    COUNT(*) AS total_orders
FROM ecommerce_sales
GROUP BY payment_method
ORDER BY total_revenue DESC;
SELECT
    region,
    ROUND(AVG(delivery_days), 2) AS average_delivery_days
FROM ecommerce_sales
GROUP BY region
ORDER BY average_delivery_days DESC;
SELECT
    region,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY region
ORDER BY total_revenue DESC;


SELECT
    payment_method,
    COUNT(*) AS total_orders,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY payment_method
ORDER BY total_revenue DESC;


SELECT
    region,
    product_category,
    COUNT(*) AS total_orders,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY region, product_category
ORDER BY region, total_revenue DESC;


SELECT
    customer_id,
    COUNT(*) AS total_orders,
    ROUND(SUM(revenue), 2) AS total_customer_revenue
FROM ecommerce_sales
GROUP BY customer_id
ORDER BY total_customer_revenue DESC
LIMIT 10;


SELECT
    customer_id,
    COUNT(*) AS number_of_orders
FROM ecommerce_sales
GROUP BY customer_id
ORDER BY number_of_orders DESC;


SELECT
    customer_id,
    COUNT(*) AS number_of_orders
FROM ecommerce_sales
GROUP BY customer_id
HAVING COUNT(*) > 8
ORDER BY number_of_orders DESC;


SELECT
    region,
    ROUND(AVG(delivery_days), 2) AS average_delivery_days
FROM ecommerce_sales
GROUP BY region
ORDER BY average_delivery_days DESC;


SELECT
    delivery_speed,
    COUNT(*) AS total_orders,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(AVG(revenue), 2) AS average_order_revenue
FROM ecommerce_sales
GROUP BY delivery_speed
ORDER BY total_revenue DESC;


SELECT
    order_id,
    customer_id,
    revenue,
    CASE
        WHEN revenue >= 1500 THEN 'High Value'
        WHEN revenue >= 750 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS order_value_category
FROM ecommerce_sales
ORDER BY revenue DESC;


SELECT
    product_category,
    ROUND(AVG(revenue), 2) AS average_order_revenue
FROM ecommerce_sales
GROUP BY product_category
HAVING AVG(revenue) > (
    SELECT AVG(revenue)
    FROM ecommerce_sales
)
ORDER BY average_order_revenue DESC;


WITH customer_revenue AS (
    SELECT
        customer_id,
        ROUND(SUM(revenue), 2) AS total_revenue
    FROM ecommerce_sales
    GROUP BY customer_id
)
SELECT
    customer_id,
    total_revenue,
    RANK() OVER (
        ORDER BY total_revenue DESC
    ) AS revenue_rank
FROM customer_revenue
ORDER BY revenue_rank;