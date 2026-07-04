-- ==========================================================
-- RETAIL CONSUMER INTELLIGENCE PROJECT
-- ==========================================================

CREATE DATABASE Retail_Consumer_Intelligence;

USE Retail_Consumer_Intelligence;

-- ==========================================================
-- BASIC SQL
-- ==========================================================

-- ----------------------------------------------------------
-- Query 1 : Display Complete Dataset
-- Concept : SELECT
-- ----------------------------------------------------------

SELECT *
FROM consumer_behavior_final;

-- ----------------------------------------------------------
-- Query 2 : Display First 10 Records
-- Concept : LIMIT
-- ----------------------------------------------------------

SELECT *
FROM consumer_behavior_final
LIMIT 10;

-- ----------------------------------------------------------
-- Query 3 : Total Number of Customers
-- Concept : COUNT()
-- ----------------------------------------------------------

SELECT COUNT(*) AS Total_Customers
FROM consumer_behavior_final;

-- ----------------------------------------------------------
-- Query 4 : Display Required Columns
-- Concept : SELECT Specific Columns
-- ----------------------------------------------------------

SELECT
    `Customer ID`,
    Age,
    Gender,
    Category,
    `Purchase Amount (USD)`
FROM consumer_behavior_final;

-- ----------------------------------------------------------
-- Query 5 : Unique Product Categories
-- Concept : DISTINCT
-- ----------------------------------------------------------

SELECT DISTINCT Category
FROM consumer_behavior_final;

-- ----------------------------------------------------------
-- Query 6 : Unique Seasons
-- Concept : DISTINCT
-- ----------------------------------------------------------

SELECT DISTINCT Season
FROM consumer_behavior_final;

-- ----------------------------------------------------------
-- Query 7 : Total Locations
-- Concept : COUNT(DISTINCT)
-- ----------------------------------------------------------

SELECT COUNT(DISTINCT Location) AS Total_Locations
FROM consumer_behavior_final;

-- ==========================================================
-- WHERE CLAUSE
-- ==========================================================

-- ----------------------------------------------------------
-- Query 8 : Customers Older Than 40
-- ----------------------------------------------------------

SELECT *
FROM consumer_behavior_final
WHERE Age > 40;

-- ----------------------------------------------------------
-- Query 9 : Female Customers
-- ----------------------------------------------------------

SELECT *
FROM consumer_behavior_final
WHERE Gender='Female';

-- ----------------------------------------------------------
-- Query 10 : Clothing Category Customers
-- ----------------------------------------------------------

SELECT *
FROM consumer_behavior_final
WHERE Category='Clothing';

-- ----------------------------------------------------------
-- Query 11 : Winter Purchases
-- ----------------------------------------------------------

SELECT *
FROM consumer_behavior_final
WHERE Season='Winter';

-- ----------------------------------------------------------
-- Query 12 : Customers From California
-- ----------------------------------------------------------

SELECT *
FROM consumer_behavior_final
WHERE Location='California';

-- ----------------------------------------------------------
-- Query 13 : Credit Card Customers
-- ----------------------------------------------------------

SELECT *
FROM consumer_behavior_final
WHERE `Payment Method`='Credit Card';

-- ----------------------------------------------------------
-- Query 14 : Subscription Customers
-- ----------------------------------------------------------

SELECT *
FROM consumer_behavior_final
WHERE `Subscription Status`='Yes';

-- ----------------------------------------------------------
-- Query 15 : Promo Code Users
-- ----------------------------------------------------------

SELECT *
FROM consumer_behavior_final
WHERE `Promo Code Used`='Yes';

-- ==========================================================
-- ORDER BY + AGGREGATE FUNCTIONS + GROUP BY
-- ==========================================================

-- ----------------------------------------------------------
-- Query 16 : Youngest Customers
-- Concept : ORDER BY ASC
-- ----------------------------------------------------------

SELECT *
FROM consumer_behavior_final
ORDER BY Age ASC;

-- ----------------------------------------------------------
-- Query 17 : Highest Purchase Amount
-- Concept : ORDER BY DESC
-- ----------------------------------------------------------

SELECT *
FROM consumer_behavior_final
ORDER BY `Purchase Amount (USD)` DESC;

-- ----------------------------------------------------------
-- Query 18 : Highest Review Rating
-- ----------------------------------------------------------

SELECT *
FROM consumer_behavior_final
ORDER BY `Review Rating` DESC;

-- ----------------------------------------------------------
-- Query 19 : Most Previous Purchases
-- ----------------------------------------------------------

SELECT *
FROM consumer_behavior_final
ORDER BY `Previous Purchases` DESC;

-- ----------------------------------------------------------
-- Query 20 : Sort by Season then Purchase Amount
-- ----------------------------------------------------------

SELECT *
FROM consumer_behavior_final
ORDER BY Season ASC,
         `Purchase Amount (USD)` DESC;

-- ==========================================================
-- AGGREGATE FUNCTIONS
-- ==========================================================

-- ----------------------------------------------------------
-- Query 21 : Total Sales
-- Concept : SUM()
-- ----------------------------------------------------------

SELECT SUM(`Purchase Amount (USD)`) AS Total_Sales
FROM consumer_behavior_final;

-- ----------------------------------------------------------
-- Query 22 : Average Purchase Amount
-- Concept : AVG()
-- ----------------------------------------------------------

SELECT AVG(`Purchase Amount (USD)`) AS Average_Purchase
FROM consumer_behavior_final;

-- ----------------------------------------------------------
-- Query 23 : Highest Purchase
-- Concept : MAX()
-- ----------------------------------------------------------

SELECT MAX(`Purchase Amount (USD)`) AS Highest_Purchase
FROM consumer_behavior_final;

-- ----------------------------------------------------------
-- Query 24 : Lowest Purchase
-- Concept : MIN()
-- ----------------------------------------------------------

SELECT MIN(`Purchase Amount (USD)`) AS Lowest_Purchase
FROM consumer_behavior_final;

-- ----------------------------------------------------------
-- Query 25 : Average Customer Age
-- ----------------------------------------------------------

SELECT AVG(Age) AS Average_Age
FROM consumer_behavior_final;

-- ==========================================================
-- GROUP BY
-- ==========================================================

-- ----------------------------------------------------------
-- Query 26 : Customers by Gender
-- ----------------------------------------------------------

SELECT Gender,
       COUNT(*) AS Total_Customers
FROM consumer_behavior_final
GROUP BY Gender;

-- ----------------------------------------------------------
-- Query 27 : Average Purchase by Gender
-- ----------------------------------------------------------

SELECT Gender,
       AVG(`Purchase Amount (USD)`) AS Average_Purchase
FROM consumer_behavior_final
GROUP BY Gender;

-- ----------------------------------------------------------
-- Query 28 : Total Sales by Category
-- ----------------------------------------------------------

SELECT Category,
       SUM(`Purchase Amount (USD)`) AS Total_Sales
FROM consumer_behavior_final
GROUP BY Category;

-- ----------------------------------------------------------
-- Query 29 : Average Review Rating by Category
-- ----------------------------------------------------------

SELECT Category,
       AVG(`Review Rating`) AS Average_Rating
FROM consumer_behavior_final
GROUP BY Category;

-- ----------------------------------------------------------
-- Query 30 : Customers by Payment Method
-- ----------------------------------------------------------

SELECT `Payment Method`,
       COUNT(*) AS Total_Customers
FROM consumer_behavior_final
GROUP BY `Payment Method`;

-- ==========================================================
-- HAVING + IN + BETWEEN + LIKE + CASE WHEN
-- ==========================================================

-- ==========================================================
-- HAVING
-- ==========================================================

-- ----------------------------------------------------------
-- Query 31 : Categories with Average Purchase Greater Than 60
-- ----------------------------------------------------------

SELECT Category,
       AVG(`Purchase Amount (USD)`) AS Average_Purchase
FROM consumer_behavior_final
GROUP BY Category
HAVING AVG(`Purchase Amount (USD)`) > 60;

-- ----------------------------------------------------------
-- Query 32 : Locations Having More Than 80 Customers
-- ----------------------------------------------------------

SELECT Location,
       COUNT(*) AS Total_Customers
FROM consumer_behavior_final
GROUP BY Location
HAVING COUNT(*) > 80;

-- ----------------------------------------------------------
-- Query 33 : Payment Methods Having Average Purchase > 60
-- ----------------------------------------------------------

SELECT `Payment Method`,
       AVG(`Purchase Amount (USD)`) AS Average_Purchase
FROM consumer_behavior_final
GROUP BY `Payment Method`
HAVING AVG(`Purchase Amount (USD)`) > 60;

-- ==========================================================
-- BETWEEN
-- ==========================================================

-- ----------------------------------------------------------
-- Query 34 : Customers Between Age 30 and 40
-- ----------------------------------------------------------

SELECT *
FROM consumer_behavior_final
WHERE Age BETWEEN 30 AND 40;

-- ----------------------------------------------------------
-- Query 35 : Purchase Amount Between 50 and 80
-- ----------------------------------------------------------

SELECT *
FROM consumer_behavior_final
WHERE `Purchase Amount (USD)` BETWEEN 50 AND 80;

-- ==========================================================
-- IN
-- ==========================================================

-- ----------------------------------------------------------
-- Query 36 : Winter and Summer Customers
-- ----------------------------------------------------------

SELECT *
FROM consumer_behavior_final
WHERE Season IN ('Winter','Summer');

-- ----------------------------------------------------------
-- Query 37 : Clothing and Footwear Customers
-- ----------------------------------------------------------

SELECT *
FROM consumer_behavior_final
WHERE Category IN ('Clothing','Footwear');

-- ==========================================================
-- LIKE
-- ==========================================================

-- ----------------------------------------------------------
-- Query 38 : Locations Starting With 'N'
-- ----------------------------------------------------------

SELECT *
FROM consumer_behavior_final
WHERE Location LIKE 'N%';

-- ----------------------------------------------------------
-- Query 39 : Items Ending With 's'
-- ----------------------------------------------------------

SELECT *
FROM consumer_behavior_final
WHERE `Item Purchased` LIKE '%s';

-- ----------------------------------------------------------
-- Query 40 : Colors Containing 'e'
-- ----------------------------------------------------------

SELECT *
FROM consumer_behavior_final
WHERE Color LIKE '%e%';

-- ==========================================================
-- CASE WHEN
-- ==========================================================

-- ----------------------------------------------------------
-- Query 41 : Spending Category using CASE
-- ----------------------------------------------------------

SELECT
    `Customer ID`,
    `Purchase Amount (USD)`,
    CASE
        WHEN `Purchase Amount (USD)` < 40 THEN 'Low'
        WHEN `Purchase Amount (USD)` BETWEEN 40 AND 70 THEN 'Medium'
        ELSE 'High'
    END AS Spending_Category
FROM consumer_behavior_final;

-- ----------------------------------------------------------
-- Query 42 : Customer Age Category
-- ----------------------------------------------------------

SELECT
    `Customer ID`,
    Age,
    CASE
        WHEN Age < 30 THEN 'Young'
        WHEN Age BETWEEN 30 AND 50 THEN 'Adult'
        ELSE 'Senior'
    END AS Age_Category
FROM consumer_behavior_final;

-- ----------------------------------------------------------
-- Query 43 : Discount Status
-- ----------------------------------------------------------

SELECT
    `Customer ID`,
    `Discount Applied`,
    CASE
        WHEN `Discount Applied`='Yes' THEN 'Discount Given'
        ELSE 'No Discount'
    END AS Discount_Status
FROM consumer_behavior_final;

-- ==========================================================
-- BUSINESS INSIGHTS
-- ==========================================================

-- ----------------------------------------------------------
-- Query 44 : Average Purchase by Subscription Status
-- ----------------------------------------------------------

SELECT `Subscription Status`,
       AVG(`Purchase Amount (USD)`) AS Average_Purchase
FROM consumer_behavior_final
GROUP BY `Subscription Status`;

-- ----------------------------------------------------------
-- Query 45 : Average Purchase by Shipping Type
-- ----------------------------------------------------------

SELECT `Shipping Type`,
       AVG(`Purchase Amount (USD)`) AS Average_Purchase
FROM consumer_behavior_final
GROUP BY `Shipping Type`;

-- ==========================================================
-- SUBQUERIES + STRING FUNCTIONS + BUSINESS INSIGHTS
-- ==========================================================

-- ==========================================================
-- SUBQUERIES
-- ==========================================================

-- ----------------------------------------------------------
-- Query 46 : Customers Spending More Than Average Purchase
-- ----------------------------------------------------------

SELECT
    `Customer ID`,
    Age,
    Gender,
    `Purchase Amount (USD)`
FROM consumer_behavior_final
WHERE `Purchase Amount (USD)` >
(
    SELECT AVG(`Purchase Amount (USD)`)
    FROM consumer_behavior_final
);

-- ----------------------------------------------------------
-- Query 47 : Customers Having Maximum Purchase Amount
-- ----------------------------------------------------------

SELECT *
FROM consumer_behavior_final
WHERE `Purchase Amount (USD)` =
(
    SELECT MAX(`Purchase Amount (USD)`)
    FROM consumer_behavior_final
);

-- ==========================================================
-- STRING FUNCTIONS
-- ==========================================================

-- ----------------------------------------------------------
-- Query 48 : Customer Location in Uppercase
-- ----------------------------------------------------------

SELECT
    `Customer ID`,
    UPPER(Location) AS Location_Upper
FROM consumer_behavior_final;

-- ----------------------------------------------------------
-- Query 49 : Length of Item Name
-- ----------------------------------------------------------

SELECT
    `Item Purchased`,
    LENGTH(`Item Purchased`) AS Item_Name_Length
FROM consumer_behavior_final;

-- ==========================================================
-- BUSINESS INSIGHT QUERIES
-- ==========================================================

-- ----------------------------------------------------------
-- Query 50 : Top 5 Locations by Total Sales
-- ----------------------------------------------------------

SELECT
    Location,
    SUM(`Purchase Amount (USD)`) AS Total_Sales
FROM consumer_behavior_final
GROUP BY Location
ORDER BY Total_Sales DESC
LIMIT 5;

-- ----------------------------------------------------------
-- Query 51 : Top 5 Categories by Revenue
-- ----------------------------------------------------------

SELECT
    Category,
    SUM(`Purchase Amount (USD)`) AS Revenue
FROM consumer_behavior_final
GROUP BY Category
ORDER BY Revenue DESC
LIMIT 5;

-- ----------------------------------------------------------
-- Query 52 : Average Purchase by Spending Level
-- ----------------------------------------------------------

SELECT
    `Spending Level`,
    AVG(`Purchase Amount (USD)`) AS Average_Purchase
FROM consumer_behavior_final
GROUP BY `Spending Level`;

-- ----------------------------------------------------------
-- Query 53 : Loyal Customers vs Average Purchase
-- ----------------------------------------------------------

SELECT
    `Loyal Customer`,
    AVG(`Purchase Amount (USD)`) AS Average_Purchase
FROM consumer_behavior_final
GROUP BY `Loyal Customer`;

-- ----------------------------------------------------------
-- Query 54 : High Value Customer Analysis
-- ----------------------------------------------------------

SELECT
    `High Value Customer`,
    COUNT(*) AS Total_Customers,
    AVG(`Purchase Amount (USD)`) AS Average_Purchase
FROM consumer_behavior_final
GROUP BY `High Value Customer`;

-- ----------------------------------------------------------
-- Query 55 : Frequency of Purchases Analysis
-- ----------------------------------------------------------

SELECT
    `Frequency of Purchases`,
    COUNT(*) AS Total_Customers,
    AVG(`Purchase Amount (USD)`) AS Average_Purchase
FROM consumer_behavior_final
GROUP BY `Frequency of Purchases`
ORDER BY Average_Purchase DESC;