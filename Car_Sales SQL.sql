use carsales;

select * from cars;


-- How can you display the first and last 5 rows of the dataset

SELECT TOP 5 * FROM Cars;
SELECT * FROM (
    SELECT *, ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS rn
    FROM cars
) AS temp
ORDER BY rn DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;


-- Get column names and data types

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Cars';


-- Give five point summary of the dataset
SELECT
    MIN(Q1_Sales) AS Min_Q1, MAX(Q1_Sales) AS Max_Q1, AVG(Q1_Sales) AS Avg_Q1,
    MIN(Q2_Sales) AS Min_Q2, MAX(Q2_Sales) AS Max_Q2, AVG(Q2_Sales) AS Avg_Q2,
    MIN(Q3_Sales) AS Min_Q3, MAX(Q3_Sales) AS Max_Q3, AVG(Q3_Sales) AS Avg_Q3,
    MIN(Q4_Sales) AS Min_Q4, MAX(Q4_Sales) AS Max_Q4, AVG(Q4_Sales) AS Avg_Q4
FROM Cars;

-- How can you calculate the total sales for each brand across all quarters
SELECT Brand, SUM(Q1_Sales + Q2_Sales + Q3_Sales + Q4_Sales) AS TotalSales
FROM Cars
GROUP BY Brand;

-- How can you filter the DataFrame to show only the rows where the Q1 Sales are greater than 10,000
SELECT *
FROM Cars
WHERE Q1_Sales > 10000;

-- How can you group the data by “AUTOGROUP” and calculate the total sales for each group
SELECT Autogroup, SUM(Q1_Sales + Q2_Sales + Q3_Sales + Q4_Sales) AS TotalSales
FROM Cars
GROUP BY Autogroup;

-- How can you find the brand with the highest total sale
SELECT TOP 1 Brand, SUM(Q1_Sales + Q2_Sales + Q3_Sales + Q4_Sales) AS TotalSales
FROM Cars
GROUP BY Brand
ORDER BY TotalSales DESC;

-- How can you add a new column that calculates the average quarterly sales for each brand
SELECT *, (Q1_Sales + Q2_Sales + Q3_Sales + Q4_Sales) / 4.0 AS AvgQuarterlySales
FROM Cars;

-- How can you sort the DataFrame by total sales in descending order
SELECT *, (Q1_Sales + Q2_Sales + Q3_Sales + Q4_Sales) AS TotalSales
FROM Cars
ORDER BY TotalSales DESC;

-- How can you find the average sales for each quarter across all brands
SELECT
    AVG(Q1_Sales) AS Avg_Q1,
    AVG(Q2_Sales) AS Avg_Q2,
    AVG(Q3_Sales) AS Avg_Q3,
    AVG(Q4_Sales) AS Avg_Q4
FROM Cars;

-- How can you plot the total sales for each brand using a bar chart
SELECT Brand, SUM(Q1_Sales + Q2_Sales + Q3_Sales + Q4_Sales) AS TotalSales
FROM Cars
GROUP BY Brand;

-- How can you calculate the percentage contribution of each quarter to the total sales for each brand
SELECT
    Brand,
    Q1_Sales * 100.0 / (Q1_Sales + Q2_Sales + Q3_Sales + Q4_Sales) AS Q1_Pct,
    Q2_Sales * 100.0 / (Q1_Sales + Q2_Sales + Q3_Sales + Q4_Sales) AS Q2_Pct,
    Q3_Sales * 100.0 / (Q1_Sales + Q2_Sales + Q3_Sales + Q4_Sales) AS Q3_Pct,
    Q4_Sales * 100.0 / (Q1_Sales + Q2_Sales + Q3_Sales + Q4_Sales) AS Q4_Pct
FROM Cars;

-- How can you create a pivot table to show the total sales for each brand per quarter
SELECT Brand,
    SUM(Q1_Sales) AS Q1,
    SUM(Q2_Sales) AS Q2,
    SUM(Q3_Sales) AS Q3,
    SUM(Q4_Sales) AS Q4
FROM Cars
GROUP BY Brand;

-- How can you filter the DataFrame to show only the top 5 brands by total sales
SELECT TOP 5 Brand, SUM(Q1_Sales + Q2_Sales + Q3_Sales + Q4_Sales) AS TotalSales
FROM Cars
GROUP BY Brand
ORDER BY TotalSales DESC;

-- How can you check for any duplicate rows in the DataFrame
SELECT Brand, Autogroup, Q1_Sales, Q2_Sales, Q3_Sales, Q4_Sales, COUNT(*) AS Count
FROM Cars
GROUP BY Brand, Autogroup, Q1_Sales, Q2_Sales, Q3_Sales, Q4_Sales
HAVING COUNT(*) > 1;

-- Drop rows with null sales data
DELETE FROM cars
WHERE Q1_Sales IS NULL OR Q2_Sales IS NULL OR Q3_Sales IS NULL OR Q4_Sales IS NULL;
