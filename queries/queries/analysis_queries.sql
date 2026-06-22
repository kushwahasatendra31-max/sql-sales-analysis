-- Total Sales
SELECT SUM(sales_amount) AS total_sales
FROM sales;

-- Top Customers
SELECT customer_name,
       SUM(sales_amount) AS revenue
FROM sales
GROUP BY customer_name
ORDER BY revenue DESC
LIMIT 5;

-- Category Revenue
SELECT category,
       SUM(sales_amount) AS revenue
FROM sales
GROUP BY category;

-- Monthly Sales Trend
SELECT MONTH(order_date) AS month,
       SUM(sales_amount) AS total_sales
FROM sales
GROUP BY MONTH(order_date);

-- Customer Ranking
SELECT customer_name,
       sales_amount,
       RANK() OVER(ORDER BY sales_amount DESC) AS sales_rank
FROM sales;
