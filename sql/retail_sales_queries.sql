CREATE DATABASE IF NOT EXISTS retail_sales_db;

USE retail_sales_db;

USE retail_sales_db;

SELECT
    COUNT(*) AS total_orders,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin_pct
FROM retail_sales;

SELECT
    Category,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM retail_sales
GROUP BY Category
ORDER BY total_sales DESC;

SELECT
    Region,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM retail_sales
GROUP BY Region
ORDER BY total_sales DESC;

SELECT
    DATE_FORMAT(Order_Date, '%Y-%m') AS sales_month,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM retail_sales
GROUP BY DATE_FORMAT(Order_Date, '%Y-%m')
ORDER BY sales_month;
