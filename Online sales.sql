CREATE DATABASE SALES_TREND ;

USE SALES_TREND;

CREATE TABLE online_sales (
    Order_ID INT PRIMARY KEY,
    Order_Date DATE,
    Amount DECIMAL(10, 2),
    Product_ID VARCHAR(10)
);

SELECT * FROM online_sales;


SELECT 
    Order_ID,
    Order_Date,
    EXTRACT(MONTH FROM Order_Date) AS Month,
    Amount,
    Product_ID
FROM 
    Online_Sales;
    

SELECT
    DATE_FORMAT(STR_TO_DATE(Order_DATE,'%d/%m/%y'), '%y-%m') AS YearMonth,
    SUM(`Amount ($)`) AS Total_Revenue,
    COUNT(*) AS Order_Volume
FROM
      online_sales
GROUP BY
     DATE_FORMAT(STR_TO_DATE(Order_DATE,'%d/%m/%y'), '%y-%m') 
 ORDER BY
     STR_TO_DATE('01-',YearMonth),'%d-%m-%y';
     
     
 SELECT 
    DATE_FORMAT(STR_TO_DATE(Order_DATE,'%d/%m/%y'), '%y-%m') AS YearMonth,
    SUM(`Amount ($)`) AS total_revenue
FROM 
    online_sales
GROUP BY 
    DATE_FORMAT(STR_TO_DATE(Order_DATE,'%d/%m/%y'), '%y-%m') 
ORDER BY 
    Total_Revenue DESC
LIMIT 3;
   