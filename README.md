# Zepto E-Commerce SQL Analysis

## Project Overview

This project focuses on analyzing a Zepto e-commerce product dataset using SQL.

The objective of this project is to explore product data, perform data cleaning, analyze pricing and discounts, understand stock availability, and generate business insights related to revenue, product value, and inventory.

---

## Dataset

The dataset contains product-level information from an kaggel platform.

### Columns

| Column                 | Description                                   |
| ---------------------- | --------------------------------------------- |
| `sku_id`               | Unique SKU identifier                         |
| `category`             | Product category                              |
| `name`                 | Product name                                  |
| `mrp`                  | Maximum Retail Price                          |
| `discounpercent`       | Discount percentage                           |
| `availableQuantity`    | Available quantity in inventory               |
| `discountSellingPrice` | Selling price after discount                  |
| `weightInGms`          | Product weight in grams                       |
| `outOfStock`           | Indicates whether the product is out of stock |
| `quantity`             | Product quantity                              |

---

## Project Workflow

### 1. Data Exploration

* Previewed the dataset.
* Counted the total number of products.
* Identified different product categories.
* Compared products based on stock availability.

### 2. Data Cleaning

* Checked for NULL values.
* Identified duplicate product names.
* Identified products with zero MRP or selling price.
* Removed products where MRP was zero.
* Converted MRP and selling price values from paise to rupees.

### 3. Business Analysis

The project analyzes several business questions:

* What are the top 10 products based on discount percentage?
* Which high-MRP products are out of stock?
* Which product categories have the highest estimated revenue?
* Which products have an MRP greater than 500 with a discount below 10%?
* Which 5 categories offer the highest average discount?
* What is the price per gram of products weighing at least 100g?
* How can products be categorized into Low, Medium, and Bulk based on weight?
* What is the total inventory weight for each category?

---

## Key Metrics

### Estimated Revenue

Estimated revenue is calculated using:

`Discount Selling Price × Available Quantity`

### Price Per Gram

Price per gram is calculated to compare product value:

`Discount Selling Price ÷ Product Weight`

### Total Inventory Weight

Total inventory weight is calculated using:

`Product Weight × Available Quantity`

---

## SQL Concepts Used

* `CREATE TABLE`
* `DROP TABLE IF EXISTS`
* `SELECT`
* `WHERE`
* `GROUP BY`
* `HAVING`
* `ORDER BY`
* `LIMIT`
* `DISTINCT`
* `COUNT()`
* `SUM()`
* `AVG()`
* `ROUND()`
* `CASE`
* `IS NULL`
* `DELETE`
* `UPDATE`
* Aggregate Functions
* Conditional Logic
* Arithmetic Calculations

---

## Key Analysis Highlights

* Ranked products based on discount percentage.
* Identified high-value products that were out of stock.
* Compared estimated revenue across product categories.
* Analyzed average discounts offered by different categories.
* Calculated price per gram to identify better-value products.
* Created weight-based product categories using `CASE`.
* Calculated total inventory weight for each category.

---

## Project Structure

```text
Zepto-Ecommerce-SQL-Analysis/
│
├── Zepto_Ecommerce_Analysis(2).sql
└── README.md
```

---

## Learning Outcome

This project helped strengthen practical SQL skills by applying data cleaning, exploratory data analysis, aggregation, conditional logic, and business-oriented SQL queries to a real-world e-commerce use case.

It demonstrates how SQL can be used to transform raw product data into meaningful business insights.

---

## Tools & Technologies

**SQL | PostgreSQL | Data Analysis | E-Commerce Analytics**

---

## Author

** Raman Kumar**

Data Analytics | SQL | Python | Power BI
