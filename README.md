# Retail Sales & Business Performance Analysis

## Project overview
This beginner portfolio project analyzes retail sales, profit, discounts, products, customers, and regions. It demonstrates a practical workflow using Excel, SQL, Python, and Power BI.

**Important:** `data/retail_sales.csv` is a synthetic practice dataset generated for this learning project. It is not real company data. Replace it with a public dataset such as Tableau's Sample Superstore if you want to extend the project.

## Business questions
1. What are total sales and total profit?
2. Which categories and sub-categories generate the most sales?
3. Which regions perform best?
4. How do sales change month to month?
5. Are higher discounts associated with lower profit?
6. Which business areas should management investigate?

## Repository structure
- `data/` — synthetic practice data in CSV and Excel formats
- `notebooks/` — Python analysis notebook
- `sql/` — SQL queries for analysis
- `excel/` — instructions for Excel analysis
- `powerbi/` — instructions for building a Power BI dashboard
- `requirements.txt` — Python packages

## How to run the Python notebook
1. Install Python and Jupyter, or open Google Colab.
2. Upload `data/retail_sales.csv` and `notebooks/retail_sales_analysis.ipynb` if using Colab.
3. Run the notebook cells from top to bottom.
4. Review the printed metrics and charts.

Install packages locally:
```bash
pip install -r requirements.txt
```

## SQL
Open `sql/retail_sales_queries.sql` in a SQL editor. Create a table named `retail_sales` with the columns in the CSV, import the CSV, then run the queries. SQL syntax is written for SQLite and is easy to adapt to MySQL.

## Excel
Open `data/retail_sales.xlsx`. Convert the data range to a Table, then create PivotTables and charts. See `excel/excel_steps.md`.

## Power BI
Open Power BI Desktop, choose **Get data > Text/CSV**, and load `data/retail_sales.csv`. Follow `powerbi/powerbi_steps.md` to build the report.

## Suggested final insights
Do not copy conclusions blindly. Use your actual results to write 3–5 observations and 2–3 recommendations. Explain what the numbers mean for a business.

## Limitations
The data is synthetic and designed for practice. Results are not evidence about any real retailer.
