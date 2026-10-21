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
- Four Card visuals: Total Sales, Total Profit, Units Sold, Profit Margin %.
- Clustered bar chart: Axis = Category; Values = Total Sales and Total Profit (or use separate visuals if scales are hard to compare).
- Bar chart: Axis = Region; Values = Total Profit.
- Line chart: X-axis = Order_Date (month level); Y-axis = Total Sales.
- Bar chart: Axis = Sub_Category; Values = Total Sales.
- Add slicers for Region, Category, and Segment.
- Use clear titles, consistent formatting, and avoid clutter.

Save the file as `powerbi/retail_sales_dashboard.pbix`. Power BI Desktop is required to create the PBIX file.
