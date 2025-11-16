-- I imported  the data set to my sakila and this is the command to view the whole table of the set 
SELECT * FROM sakila.`shooping data`;
-- How to select a specific colunm in the data set 
SELECT AgeGroup FROM sakila.`shooping data`;
SELECT Gender,ItemPurchased,Category,Location,PurchaseAmount,PaymentMethod FROM sakila.`shooping data`;
--  How to select a  distinct value in a column 
SELECT DISTINCT  Gender FROM sakila.`shooping data`;
SELECT DISTINCT  Age FROM sakila.`shooping data`;
SELECT DISTINCT AgeGroup,Gender,Category,PurchaseAmount FROM sakila.`shooping data`;
-- How to find a duplicate rows in the data set 
SELECT Gender,Category,Location,Color, COUNT(*) AS duplicate FROM sakila.`shooping data`
GROUP BY Gender,Category,Location,Color HAVING COUNT(*)>1;
-- How to select a specific full details of the  specific row using the id number 
SELECT CustomerID,AgeGroup,Gender,ItemPurchased,Category,PurchaseAmount,Location,Size,Color,Season,ReviewRating
 FROM sakila.`shooping data`
WHERE CustomerID=100;
-- BASIC OVERVIEW OF THE DATA SET
-- Total customer 
SELECT COUNT(*) AS Total_Records FROM  sakila.`shooping data`;
-- Gender Distribution 
SELECT Gender, COUNT(*) AS count FROM sakila.`shooping data` GROUP BY Gender;
-- Age GROUP Distribution 
SELECT AgeGroup,COUNT(*) AS count FROM sakila.`shooping data`GROUP BY AgeGroup;
-- REVENUE AND PURCHASE INSIGHT
-- Total Purchase 
SELECT SUM(PurchaseAmount) AS Total_Purchase FROM sakila.`shooping data`;
 -- Total Purchase  By Category 
 SELECT Category,SUM(PurchaseAmount) AS Category_purchase FROM sakila.`shooping data`
 GROUP BY Category ORDER BY Category_Purchase;
 -- Total purchase  By Gender 
 SELECT Gender, SUM(PurchaseAmount) AS Total_Purchase_By_Gender FROM sakila.`shooping data`
 GROUP BY Gender ORDER BY Total_Purchase_By_Gender;
 -- Total Purchase  BY Season 
 SELECT Season, SUM(PurchaseAmount) AS Total_Purchase_By_Season FROM sakila.`shooping data`
 GROUP BY Season ORDER BY Total_Purchase_By_Season;
 -- Average Purchase Amount 
 SELECT AVG(PurchaseAmount) AS Average_Purchase FROM sakila.`shooping data`;
 -- Maximum Purchase 
 SELECT MAX(PurchaseAmount) AS Maximum_Purchase FROM sakila.`shooping data`;
-- Minimum Purchase 
SELECT MIN(PurchaseAmount) AS Minimun_Purchase FROM sakila.`shooping data`;
-- CUSTOMER BEHAVIOR ANALYSIS 
-- which gneder spends more 
SELECT Gender,SUM(PurchaseAmount)AS Total_Spend FROM sakila.`shooping data` GROUP BY Gender;
-- Most Purchase Item
SELECT ItemPurchased, COUNT(*) AS PurchaseCount FROM sakila.`shooping data`
GROUP BY ItemPurchased ORDER BY PurchaseCount  LIMIT 10;
-- Most Active location
SELECT Location, COUNT(*) AS Total_Purchase FROM sakila.`shooping data` 
GROUP BY Location ORDER BY Total_Purchase DESC;
-- RATING AND SATISFACTION INSIGHTS 
-- Average Rating per Category 
SELECT Category, AVG(ReviewRating) AS Avg_Rating FROM sakila.`shooping data` 
GROUP BY Category ORDER BY Avg_Rating DESC;
-- Low Rating Items ( customer dissatisfaction)
SELECT ItemPurchased, AVG(ReviewRating) AS Avg_Rating FROM sakila.`shooping data` 
GROUP BY ItemPurchased  HAVING AVG(ReviewRating) ORDER BY Avg_Rating ;
-- PROMO CODE AND DISCOUNT ANALYSIS 
-- Promo code Usage Count 
SELECT PromoCodeUsed, COUNT(*) AS Usage_count FROM sakila.`shooping data` 
GROUP BY PromoCodeUsed;
-- Average discount Given 
SELECT AVG(DiscountValue) AS Avg_Discount FROM sakila.`shooping data` ;
 -- Do Promo Users Spend More 
 SELECT PromoCodeUsed, AVG(PurchaseAmount) AS Avg_Spend FROM sakila.`shooping data` 
 GROUP BY PromoCodeUsed;
 -- SHIPPING ANALYSIS 
 -- Most Used shipping Method 
 SELECT ShippingType, COUNT(*) AS UsageCount FROM sakila.`shooping data` 
 GROUP BY ShippingType ORDER BY UsageCount DESC;
 -- Spending by shipping Method 
 SELECT ShippingType, SUM(PurchaseAmount)AS Total_spend FROM sakila.`shooping data` 
 GROUP BY ShippingType ORDER BY Total_spend;
 --  SUBSCRIPTION BEHAVIOR 
 -- Subscrition Status Breakdown 
 SELECT SubscriptionStatus, COUNT(*) AS users FROM sakila.`shooping data` 
 GROUP BY SubscriptionStatus;
 -- Do subscribers Spend More 
 SELECT SubscriptionStatus, AVG(PurchaseAmount) AS Avg_Spend FROM sakila.`shooping data` 
 GROUP BY SubscriptionStatus;
 -- REPEAT CUSTOMER ANALYSIS 
 -- Average Previous Purchase
 SELECT AVG(PreviousPurchases) AS Avg_PreviousPurchases FROM sakila.`shooping data` ;
     -- COLOR, SIZE AND PRODUCT PREFERENCE 
     -- Most Popular Color 
SELECT Color, COUNT(*) AS Count FROM sakila.`shooping data` GROUP BY Color ORDER BY Count ;
-- Popular Size 
SELECT Size, COUNT(*) As Count FROM sakila.`shooping data`  GROUP BY Size ORDER BY Count DESC;
-- Most Popular paymentmehtod  
SELECT PaymentMethod, COUNT(*) AS Count FROM sakila.`shooping data` GROUP BY PaymentMethod ORDER BY Count DESC;
-- Total purchase by payment method 
SELECT PaymentMethod,
SUM(PurchaseAmount) AS Total_Purchase_By_paymentMethod FROM sakila.`shooping data` 
GROUP BY PaymentMethod ORDER BY Total_Purchase_By_paymentMethod;
-- count of payment method 
SELECT PaymentMethod, COUNT(*) AS Total_Count_OF_paymentMethod FROM sakila.`shooping data`GROUP BY PaymentMethod 

