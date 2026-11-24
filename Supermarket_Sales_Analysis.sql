USE supermarket_sales;
SHOW TABLES;
SELECT COUNT(*) FROM sales;
SELECT * FROM sales LIMIT 10;
SELECT ROUND(SUM(Total), 2) AS Total_Revenue
FROM sales;
SELECT SUM(Quantity) AS Total_Quantity_Sold
FROM sales;
SELECT ROUND(AVG(Rating), 2) AS Average_Customer_Rating
FROM sales;
SELECT COUNT(*) AS Total_Transactions
FROM sales;
SELECT
    `Product line`,
    ROUND(SUM(Total), 2) AS Total_Revenue
FROM sales
GROUP BY `Product line`
ORDER BY Total_Revenue DESC;
SELECT
    Branch,
    ROUND(SUM(Total), 2) AS Total_Revenue
FROM sales
GROUP BY Branch
ORDER BY Total_Revenue DESC;
SELECT
    Payment,
    ROUND(SUM(Total), 2) AS Total_Revenue
FROM sales
GROUP BY Payment
ORDER BY Total_Revenue DESC;
SELECT
    Gender,
    ROUND(SUM(Total), 2) AS Total_Revenue
FROM sales
GROUP BY Gender
ORDER BY Total_Revenue DESC;
SELECT
    `Customer type`,
    ROUND(SUM(Total), 2) AS Total_Revenue
FROM sales
GROUP BY `Customer type`
ORDER BY Total_Revenue DESC;
SELECT
    City,
    ROUND(SUM(Total), 2) AS Total_Revenue
FROM sales
GROUP BY City
ORDER BY Total_Revenue DESC;
SELECT
    MONTH(STR_TO_DATE(Date, '%m/%d/%Y')) AS Sales_Month,
    ROUND(SUM(Total), 2) AS Monthly_Revenue
FROM sales
GROUP BY Sales_Month
ORDER BY Sales_Month;
SELECT
    MAX(Total) AS Highest_Transaction
FROM sales;
SELECT
    ROUND(AVG(Total), 2) AS Average_Transaction_Value
FROM sales;
SELECT
    `Product line`,
    SUM(Quantity) AS Total_Quantity_Sold
FROM sales
GROUP BY `Product line`
ORDER BY Total_Quantity_Sold DESC;
SELECT
    `Product line`,
    ROUND(AVG(Rating), 2) AS Average_Rating
FROM sales
GROUP BY `Product line`
ORDER BY Average_Rating DESC;
SELECT
    Branch,
    COUNT(*) AS Total_Transactions
FROM sales
GROUP BY Branch
ORDER BY Total_Transactions DESC;