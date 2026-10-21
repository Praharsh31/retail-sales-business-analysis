-- Retail Sales & Business Performance Analysis
-- Import data into a table named retail_sales before running these queries.

-- 1. Overall KPIs
SELECT
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(SUM(Profit) / NULLIF(SUM(Sales), 0) * 100, 2) AS profit_margin_pct,
    SUM(Quantity) AS units_sold,
    COUNT(DISTINCT Order_ID) AS orders
FROM retail_sales;

-- 2. Sales and profit by category
SELECT Category,
       ROUND(SUM(Sales), 2) AS total_sales,
       ROUND(SUM(Profit), 2) AS total_profit
FROM retail_sales
GROUP BY Category
ORDER BY total_sales DESC;

-- 3. Regional performance
SELECT Region,
       ROUND(SUM(Sales), 2) AS total_sales,
       ROUND(SUM(Profit), 2) AS total_profit
FROM retail_sales
GROUP BY Region
ORDER BY total_profit DESC;

-- 4. Monthly trend (SQLite)
SELECT substr(Order_Date, 1, 7) AS order_month,
       ROUND(SUM(Sales), 2) AS monthly_sales,
       ROUND(SUM(Profit), 2) AS monthly_profit
FROM retail_sales
GROUP BY substr(Order_Date, 1, 7)
ORDER BY order_month;

-- 5. Products with highest sales
SELECT Sub_Category,
       ROUND(SUM(Sales), 2) AS total_sales,
       ROUND(SUM(Profit), 2) AS total_profit
FROM retail_sales
GROUP BY Sub_Category
ORDER BY total_sales DESC;

-- 6. Discount vs. profitability
SELECT Discount,
       ROUND(AVG(Profit), 2) AS average_profit,
       COUNT(*) AS order_lines
FROM retail_sales
GROUP BY Discount
ORDER BY Discount;
