drop table if exists zepto;

create table zepto(
sku_id SERIAL PRIMARY KEY,
category VARCHAR(120),
name VARCHAR(150) NOT NULL,
mrp NUMERIC(8,2),
discounpercent NUMERIC(5,2),
availableQuantity INTEGER,
discountSellingPrice NUMERIC(8,2),
weightInGms INTEGER,
outOfStock BOOLEAN,
quantity INTEGER

);

-- Data Analysis

SELECT * FROM zepto
Limit 10;

SELECT COUNT(*) FROM ZEPTO

-- FIND NULL VALUES

SELECT * FROM zepto
where name IS NULL
OR
category IS NULL
OR
mrp IS NULL
OR
discounpercent IS NULL
OR
availablequantity IS NULL
OR
discountsellingprice IS NULL
OR
weightingms IS NULL
OR
outofstock IS NULL
OR
quantity IS NULL;

-- DIFFERENT PRODUCT CATEGORY

SELECT  category
FROM zepto
group by category;

-- PRODUCT IN STOCK VS OUT OF STOCK

SELECT outofstock , count(outofstock)
from zepto
group by outofstock;

-- DUPLICATE PRODUCT

SELECT name , COUNT(sku_id) as Number_of_product
FROM zepto
GROUP BY name
HAVING count(sku_id) > 1
ORDER BY count(sku_id) desc ;

-- DATA CLEANING

-- product with price = 0

SELECT * FROM zepto
WHERE mrp = 0 OR discountsellingprice = 0;

DELETE FROM zepto
WHERE mrp = 0;

-- CONVERT PAISE TO RUPEES

UPDATE zepto
SET mrp = mrp/100.0,
discountsellingprice = discountsellingprice/100.0;

select mrp , discountsellingprice
from zepto;

-- TOP 10 BEST VALUE PRODUCT BASED ON DISCOUNT PERCENT

SELECT * FROM zepto

SELECT name , discounpercent
from zepto
ORDER BY discounpercent desc
LIMIT 10 ;

-- WHAT ARE THE PRODUCT  WITH HIGH MRP BUT OUT OF STOCK

SELECT DISTINCT name , mrp
FROM zepto
WHERE outofstock = TRUE AND mrp > 300
ORDER BY MRP DESC ;

-- CALCULATE ESTIMATED REVENUE FOR EACH CATEFORY

SELECT category ,
SUM(discountsellingprice * availableQuantity) as total_revenue
FROM zepto
GROUP BY category
ORDER BY total_revenue desc;

-- FIND ALL PRODUCT WHERE MRP IS GRATER THAN 500 AND DISCOUNT IS LESS THEN 10%

SELECT DISTINCT name , mrp , discounpercent
from zepto
WHERE mrp > 500 and discounpercent < 10

-- identify the top 5 categories offering the highest average discount percent.

SELECT category , ROUND(AVG(discounpercent),2) As  AVG_discount
FROM zepto
GROUP BY category
ORDER BY AVG_discount DESC
LIMIT 5 ;

-- Find the price per gram for product above 100g and sort by best value

SELECT DISTINCT name , weightInGms, discountsellingprice,
ROUND(discountsellingprice/weightInGms, 2) AS Price_per_gram
FROM zepto
WHERE weightInGms >= 100
ORDER BY Price_per_gram;

-- Group the Product into Category like Low , Medium, Bulk

SELECT DISTINCT name , weightInGms,
   CASE
       WHEN weightInGms < 1000 THEN 'Low'
	   WHEN weightInGms < 5000 THEN 'Medium'
	   ELSE 'Bulk'
	   END As weight_Category
From zepto;


-- what is the Total Inventery Weight Per Category

SELECT category,
SUM(weightInGms * availableQuantity) AS Total_Weight
FROM zepto
GROUP BY category 
ORDER BY Total_Weight;
