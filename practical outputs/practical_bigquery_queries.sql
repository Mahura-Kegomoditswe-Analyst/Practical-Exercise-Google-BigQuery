-- ===========================================================
-- PRACTICAL EXERCISE – GOOGLE BIGQUERY
-- Retail Sales Dataset
-- Author: Kegomoditswe Mahura
-- SQL file includes answers + explanations for all 10 questions.
-- ===========================================================


-- -----------------------------------------------------------
-- Q1. WHERE Clause
-- Filter all transactions that occurred in the year 2023.
-- Expected output: All columns
-- -----------------------------------------------------------

SELECT *
FROM `polar-strata-478207-k7.SALES.DATA`
WHERE EXTRACT(YEAR FROM Date) = 2023;



-- -----------------------------------------------------------
-- Q2. Filtering + Conditions
-- Display all transactions where Total Amount is higher than
-- the average Total Amount of the entire dataset.
-- Expected output: All columns
-- -----------------------------------------------------------

SELECT *
FROM `your_project.your_dataset.retail_sales`
WHERE Total_Amount > (
    SELECT AVG(Total_Amount)
    FROM `polar-strata-478207-k7.SALES.DATA`
);



-- -----------------------------------------------------------
-- Q3. Aggregate Functions
-- Calculate the total revenue (sum of Total Amount).
-- Expected output: Total_Revenue
-- -----------------------------------------------------------

SELECT 
    SUM(Total_Amount) AS Total_Revenue
FROM `polar-strata-478207-k7.SALES.DATA`;



-- -----------------------------------------------------------
-- Q4. DISTINCT
-- Display all distinct Product Categories.
-- Expected output: Product_Category
-- -----------------------------------------------------------

SELECT DISTINCT Product_Category
FROM `polar-strata-478207-k7.SALES.DATA`;



-- -----------------------------------------------------------
-- Q5. GROUP BY
-- For each Product Category, calculate the total quantity sold.
-- Expected output: Product_Category, Total_Quantity
-- -----------------------------------------------------------

SELECT 
    Product_Category,
    SUM(Quantity) AS Total_Quantity
FROM `polar-strata-478207-k7.SALES.DATA`
GROUP BY Product_Category;



-- -----------------------------------------------------------
-- Q6. CASE Statement
-- Create Age_Group column based on Age:
-- Youth (<30), Adult (30–59), Senior (60+)
-- Expected output: Customer_ID, Age, Age_Group
-- -----------------------------------------------------------

SELECT 
    Customer_ID,
    Age,
    CASE
        WHEN Age < 30 THEN 'Youth'
        WHEN Age BETWEEN 30 AND 59 THEN 'Adult'
        ELSE 'Senior'
    END AS Age_Group
FROM `polar-strata-478207-k7.SALES.DATA`;



-- -----------------------------------------------------------
-- Q7. Conditional Aggregation
-- Count how many high-value transactions each Gender has:
-- High-value = Total Amount > 500
-- Expected output: Gender, High_Value_Transactions
-- -----------------------------------------------------------

SELECT 
    Gender,
    COUNT(CASE WHEN Total_Amount > 500 THEN 1 END) AS High_Value_Transactions
FROM `polar-strata-478207-k7.SALES.DATA`
GROUP BY Gender;



-- -----------------------------------------------------------
-- Q8. HAVING Clause
-- For each Product Category, show only those categories where
-- total revenue exceeds 5,000.
-- Expected output: Product_Category, Total_Revenue
-- -----------------------------------------------------------

SELECT 
    Product_Category,
    SUM(Total_Amount) AS Total_Revenue
FROM `polar-strata-478207-k7.SALES.DATA`
GROUP BY Product_Category
HAVING SUM(Total_Amount) > 5000;



-- -----------------------------------------------------------
-- Q9. Calculated Fields
-- Create Unit_Cost_Category based on Price_per_Unit:
-- Cheap (<50), Moderate (50–200), Expensive (>200)
-- Expected output: Transaction_ID, Price_per_Unit, Unit_Cost_Category
-- -----------------------------------------------------------

SELECT 
    Transaction_ID,
    Price_per_Unit,
    CASE
        WHEN Price_per_Unit < 50 THEN 'Cheap'
        WHEN Price_per_Unit BETWEEN 50 AND 200 THEN 'Moderate'
        ELSE 'Expensive'
    END AS Unit_Cost_Category
FROM `polar-strata-478207-k7.SALES.DATA`;



-- -----------------------------------------------------------
-- Q10. Combining WHERE + CASE
-- Transactions from customers aged 40+ AND add Spending_Level:
-- High (>1000), Low (<=1000)
-- Expected output: Customer_ID, Age, Total_Amount, Spending_Level
-- -----------------------------------------------------------

SELECT 
    Customer_ID,
    Age,
    Total_Amount,
    CASE
        WHEN Total_Amount > 1000 THEN 'High'
        ELSE 'Low'
    END AS Spending_Level
FROM `polar-strata-478207-k7.SALES.DATA`
WHERE Age >= 40;
