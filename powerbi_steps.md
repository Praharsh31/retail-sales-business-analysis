# Power BI dashboard steps

## Load data
1. Open Power BI Desktop.
2. Select **Get data > Text/CSV** and choose `data/retail_sales.csv`.
3. Select **Load**. If needed, use **Transform Data** to confirm `Order_Date` is Date, `Sales` and `Profit` are Decimal Number, and `Quantity` is Whole Number.

## Create measures
Select **Modeling > New measure** and add each measure:

```DAX
Total Sales = SUM(retail_sales[Sales])
Total Profit = SUM(retail_sales[Profit])
Units Sold = SUM(retail_sales[Quantity])
Order Lines = DISTINCTCOUNT(retail_sales[Order_ID])
Profit Margin % = DIVIDE([Total Profit], [Total Sales], 0)
```

Format `Total Sales` and `Total Profit` as currency and `Profit Margin %` as percentage.

## Build one-page report
- Add four Card visuals: Total Sales, Total Profit, Total Orders, and Average Profit per Order.
- Add a bar chart showing Sales by Category.
- Add a horizontal bar chart showing Profit by Region.
- Add a line chart showing Monthly Sales Trend.
- Format sales, profit, and average profit as currency.
- Arrange the visuals neatly and use clear titles.
- Use the synthetic practice dataset for this project.

Save the file as `powerbi/retail_sales_dashboard.pbix`. Power BI Desktop is required to create the PBIX file.
