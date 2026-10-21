# Excel analysis steps

1. Open `data/retail_sales.xlsx`.
2. Select a cell in the data and press **Ctrl+T** to format it as a Table. Confirm headers are included.
3. Add a new worksheet called `Analysis`.
4. Insert PivotTables:
   - Sales by Category: Rows = Category; Values = Sum of Sales and Sum of Profit.
   - Sales by Region: Rows = Region; Values = Sum of Sales and Sum of Profit.
   - Monthly Sales: Rows = Order_Date (group by Months and Years if Excel offers grouping); Values = Sum of Sales.
   - Sales by Sub-Category: Rows = Sub_Category; Values = Sum of Sales and Sum of Profit.
5. Add a column chart for Sales by Category and a line chart for monthly sales.
6. Format Sales and Profit as currency. Format Discount as percentage.
7. Write three evidence-based observations on the `Analysis` sheet.
