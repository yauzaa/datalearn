-- Аналития в SQL

-- Overview (обзор ключевых метрик)
-- 1. Total Sales 
SELECT sum(sales) AS total_sales
FROM orders o 

-- 2. Total Profit
SELECT sum(profit) AS total_profit
FROM orders o 

-- 3. Profit Ratio

-- 4. Profit per Order
SELECT order_id, profit 
FROM orders o 

-- 5. Sales per Customer
SELECT DISTINCT customer_id, sum(sales)
FROM orders o 
GROUP BY customer_id 

-- 6. Avg. Discount
SELECT avg(discount)
FROM orders o 

-- 7. Monthly Sales by Segment (табличка и график)
SELECT segment, sales, date_part('month', order_date) AS month
FROM orders o 
ORDER BY MONTH


-- Product Dashboard (Продуктовые метрики)
-- 1. Sales by Product Category over time (Продажи по категориям)
SELECT product_id, category 
FROM orders o 


-- Customer Analysis
-- 1. Sales and Profit by Customer
SELECT customer_id, sales, profit 
FROM orders o 
ORDER BY customer_id asc

--2. Customer Ranking
SELECT customer_id, profit 
FROM orders o 
ORDER BY profit desc

-- 3. Sales per region
SELECT sales, region 
FROM orders o 
ORDER BY 1 desc


