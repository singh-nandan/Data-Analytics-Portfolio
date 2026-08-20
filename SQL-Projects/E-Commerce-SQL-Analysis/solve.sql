use customer_info_db;

# 1. Retrieve customer names and emails for email marketing 
SELECT name, email
FROM customers;

# 2. View complete product catalog with all available details 
SELECT *
FROM products;

# 3. List all unique product categories
SELECT DISTINCT category
FROM products;

# 4. Show all products priced above ₹1,000
SELECT *
FROM products
WHERE price > 1000;

# 5. Display products within a mid-range price bracket (₹2,000 to ₹5,000)
SELECT *
FROM products
WHERE price BETWEEN 2000 AND 5000;

#6. Fetch data for specific customer IDs (e.g., from loyalty program list)
SELECT *
FROM customers
WHERE customer_id IN (1,3,5);

# 7. Identify customers whose names start with the letter ‘A’
SELECT *
FROM customers
WHERE name LIKE 'A%';

# 8. List electronics products priced under ₹3,000
SELECT *
FROM products
WHERE category='Electronics'
AND price<3000;

# 9. Display product names and prices in descending order of price
SELECT name,price
FROM products
ORDER BY price DESC;

# 10. Display product names and prices, sorted by price and then by name 
SELECT name,price
FROM products
ORDER BY price DESC,name ASC;


# 1. Retrieve orders where customer information is missing (possibly due to data migration or deletion) 
SELECT *
FROM orders
WHERE customer_id IS NULL;

# 2. Display customer names and emails using column aliases for frontend readability
SELECT
name AS Customer_Name,
email AS Email_Address
FROM customers;

# 3. Calculate total value per item ordered by multiplying quantity and item price
SELECT
order_item_id,
quantity,
item_price,
(quantity*item_price) AS Total_Value
FROM order_items;


# 4. Combine customer name and phone number in a single column 
SELECT
CONCAT(name,' - ',phone) AS Customer_Details
FROM customers;

# 5. Extract only the date part from order timestamps for date-wise reporting
SELECT
order_id,
DATE(order_date) AS Order_Date
FROM orders;

# 6. List products that do not have any stock left 
SELECT *
FROM products
WHERE stock_quantity=0;

# 1. Count the total number of orders placed 
SELECT COUNT(*) AS Total_Orders
FROM orders;

# 2. Calculate the total revenue collected from all orders 
SELECT SUM(total_amount) AS Total_Revenue
FROM orders;

# 3. Calculate the average order value 
SELECT AVG(total_amount) AS Average_Order
FROM orders;

# 4. Count the number of customers who have placed at least one order 
SELECT COUNT(DISTINCT customer_id) AS Active_Customers
FROM orders;

# 5. Find the number of orders placed by each customer 
SELECT
customer_id,
COUNT(order_id) AS Total_Orders
FROM orders
GROUP BY customer_id;

# 6. Find total sales amount made by each customer
SELECT
customer_id,
SUM(total_amount) AS Total_Sales
FROM orders
GROUP BY customer_id;

# 7. List the number of products sold per category
SELECT
p.category,
SUM(oi.quantity) AS Products_Sold
FROM products p
JOIN order_items oi
ON p.product_id=oi.product_id
GROUP BY p.category;

# 8. Find the average item price per category
SELECT
category,
AVG(price) AS Average_Price
FROM products
GROUP BY category;

# 9. Show number of orders placed per day 
SELECT
DATE(order_date) AS Order_Date,
COUNT(*) AS Total_Orders
FROM orders
GROUP BY DATE(order_date);

# 10. List total payments received per payment method
SELECT
method,
SUM(amount_paid) AS Total_Amount
FROM payments
GROUP BY method;

# 1. Retrieve order details along with the customer name (INNER JOIN) 
SELECT
o.order_id,
c.name,
o.order_date,
o.total_amount
FROM orders o
INNER JOIN customers c
ON o.customer_id=c.customer_id;

# 2. Get list of products that have been sold (INNER JOIN with order_items) 
SELECT DISTINCT
p.product_id,
p.name
FROM products p
INNER JOIN order_items oi
ON p.product_id=oi.product_id;

# 3. List all orders with their payment method (INNER JOIN)
SELECT
o.order_id,
o.total_amount,
p.method
FROM orders o
INNER JOIN payments p
ON o.order_id=p.order_id;

# 4. Get list of customers and their orders (LEFT JOIN) 
SELECT
c.customer_id,
c.name,
o.order_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id=o.customer_id;

# 5. List all products along with order item quantity (LEFT JOIN) 
SELECT 
    p.name,
    SUM(oi.quantity) AS total_quantity
FROM products p
LEFT JOIN order_items oi
    ON p.product_id = oi.product_id
GROUP BY p.name;

# 6. List all payments including those with no matching orders (RIGHT JOIN)
SELECT
o.order_id,
p.payment_id,
p.method
FROM orders o
RIGHT JOIN payments p
ON o.order_id=p.order_id;

# 7. Combine data from three tables: customer, order, and payment
SELECT
c.name,
o.order_id,
o.total_amount,
p.method,
p.amount_paid
FROM customers c
JOIN orders o
ON c.customer_id=o.customer_id
JOIN payments p
ON o.order_id=p.order_id;



# 1. List all products priced above the average product price 
SELECT *
FROM products
WHERE price>
(
SELECT AVG(price)
FROM products
);

# 2. Find customers who have placed at least one order
SELECT *
FROM customers
WHERE customer_id IN
(
SELECT customer_id
FROM orders
);

# 3. Show orders whose total amount is above the average for that customer
SELECT *
FROM orders o
WHERE total_amount>
(
SELECT AVG(total_amount)
FROM orders
WHERE customer_id=o.customer_id
);

# 4. Display customers who haven’t placed any orders 
SELECT *
FROM customers
WHERE customer_id NOT IN
(
SELECT customer_id
FROM orders
);
SELECT *
FROM customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.customer_id
);


# 5. Show products that were never ordered 
SELECT *
FROM products
WHERE product_id NOT IN
(
SELECT product_id
FROM order_items
);

SELECT *
FROM products p
WHERE NOT EXISTS (
    SELECT 1
    FROM order_items oi
    WHERE oi.product_id = p.product_id
);


# 6. Show highest value order per customer
SELECT
customer_id,
MAX(total_amount) AS Highest_Order
FROM orders
GROUP BY customer_id;


# 7. Highest Order Per Customer (Including Names) 
SELECT
c.name,
MAX(o.total_amount) AS Highest_Order
FROM customers c
JOIN orders o
ON c.customer_id=o.customer_id
GROUP BY c.name;

# 1. List all customers who have either placed an order or written a product review 
SELECT DISTINCT c.customer_id, c.name
FROM customers c
WHERE c.customer_id IN (
    SELECT customer_id FROM orders
    UNION
    SELECT customer_id FROM product_reviews
);


# 2. List all customers who have placed an order as well as reviewed a product [intersect not supported]
SELECT DISTINCT c.customer_id, c.name
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
WHERE c.customer_id IN (
    SELECT customer_id
    FROM product_reviews
);
