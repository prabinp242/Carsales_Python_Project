#  Car Sales Analysis using Python & SQL

This project presents a detailed analysis of quarterly car sales using **Python (Pandas, Matplotlib)** and **SQL**. It includes data exploration, cleaning, transformation, visualization, and querying techniques to extract insights from a structured car sales dataset.

---

##  Project Structure

- `car_sales.csv` - Primary dataset containing brand-wise sales data across Q1 to Q4 along with `Brand` and `Autogroup`.
- `Car_Sales SQL.sql` - SQL queries used for analyzing the dataset.
- `car_sales_analysis.ipynb` *(optional)* - Python notebook with complete analysis.
- `DOC-20240904-WA0001.pdf` - Problem statement with 22 guided analysis questions.

---

## Key Objectives

This project helps to:

- Understand and manipulate tabular data using Pandas
- Use SQL for aggregating, filtering, and analyzing data
- Create visual insights for decision-making
- Perform sales growth and brand performance analysis

---

## Python Analysis Tasks (Pandas + Matplotlib)

1. Load and inspect the dataset
2. Display first and last 5 rows
3. Get dataset info and null counts
4. Provide five-point statistical summary
5. Calculate total sales per brand
6. Filter rows where Q1 Sales > 10,000
7. Group data by `AUTOGROUP` and get total sales
8. Find the brand with the highest total sales
9. Add average quarterly sales as a new column
10. Sort brands by total sales (descending)
11. Compute average sales per quarter
12. Total sales by autogroup
13. Bar chart of brand-wise total sales
14. Quarter-wise % contribution to total sales
15. Pivot table: brand vs quarter sales
16. Rename sales columns for better clarity
17. Handle missing values using quarter average
18. Calculate YoY (Year-over-Year) sales growth
19. Filter top 5 brands by total sales
20. Detect duplicate rows
21. Drop rows with any missing data
22. Save cleaned DataFrame to a new CSV file

---

## SQL Analysis Highlights

Performed using MySQL / SQLite:

- Load data into SQL table
- Perform aggregations and filtering
- Calculate total/average sales per brand/autogroup
- Identify top-selling brands
- Compute YoY growth using window functions or subqueries


## Tools Used

| Technology | Purpose |
|------------|---------|
| **Python** | Data manipulation & visualization |
| **Pandas** | DataFrame operations |
| **Matplotlib** | Bar chart plotting |
| **SQL** | Structured queries for data analysis |
| **CSV** | Dataset format |
| **Jupyter Notebook / VSCode** | Development environment |
