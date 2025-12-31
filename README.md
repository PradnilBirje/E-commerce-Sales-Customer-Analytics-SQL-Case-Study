# E-commerce-Sales-Customer-Analytics-SQL-Case-Study
```Complete E-commerce Sales &amp; Customer Analytics SQL Case Study | Realistic Business Dataset | 15 SQL Questions (Easy → Medium → Hard) | Indexing | Optimization | ERD

🚀 Project Overview
This SQL case study focuses on an e-commerce platform where customers place orders containing one or more products.
The project covers:

Database design & understanding schema
Writing optimized SQL queries
Customer analytics
Product sales analytics
Revenue and profitability insights
Order behavior patterns
Real-world business problem solving
This case study demonstrates my skills as a Data Analyst / SQL Developer.```

🗂️ Database Schema (ERD Overview)

The dataset contains four interconnected tables:

1. Customers
Column	            Description
customer_id	      Unique customer identifier
full_name	        Customer first name
city              city
state	            State
signup_date	      Date customer joined      

2. Orders
Column	            Description
order_id	        Unique order identifier
customer_id	      Customer who placed the order
order_date	      Date of order
order_status	    Order status (Completed, Shipped, Cancelled, Returned)

3. OrderItems
Column	            Description
order_item_id	    Unique row ID representing each product inside an order
order_id	        Associated order
product_id	      Product purchased
quantity	        Number of units ordered
unit_price	      Price per unit
Discount	      

4. Products
Column	            Description
product_id	      Unique product identifier
product_name	    Name of product
category	        Product category
price	            Selling price
Cost_price        Cost to company

5.Returns
Column	            Description
return_id (PK)	
order_id (FK)	
return_date	
reason

🌐 Database Model Summary
1 customer → many orders
1 order → many order items
1 product → many order items
This enables granular sales and customer insights.

🧠 Key SQL Concepts Used

✔ JOINs across multiple tables
✔ GROUP BY and HAVING
✔ SUM, AVG, COUNT for analytics
✔ Subqueries & nested queries
✔ CTEs for readable query structuring
✔ Window functions for ranking & trends
✔ Data cleaning and filtering
✔ Business KPIs for e-commerce analysis

📊 Business Questions Answered
1) List the names and emails of all customers who placed at least one order.
2) Find the total number of orders placed in January 2025.
3) Display product name and price for all products priced above ₹500.
4) Show the total quantity sold for each product.
5) Retrieve the top 5 products by number of times they appear in OrderItems.

6) Find the monthly revenue for 2025 by summing (quantity × unit_price – discount) for all orders.
7) Show the list of customers who have placed more than 3 orders.
8) Insert a new product entry and immediately verify if it appears in the Products table.
9) Update the status of all orders older than 6 months to “Archived”.
10) Create a view named top_categories_2025 that shows the top 3 product categories by revenue in 2025.

11) Identify the top 10 customers by lifetime spending and compute each customer’s percentage contribution to total revenue.
12) Create a summary table daily_sales_summary and insert aggregated revenue for each day from the Orders and OrderItems tables.
13) Add a new column profit_margin to OrderItems and populate it using unit_price, discount, and product cost (from Products).
14) Create an index on Orders(order_date) and show query improvement using EXPLAIN for a monthly sales report.
15) Find products whose return rate is higher than the overall average return rate, using window functions or category-wise comparison.

