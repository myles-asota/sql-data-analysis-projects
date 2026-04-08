-- Project 3: Revenue Dashboard Queries

-- Total revenue per city
SELECT city, SUM(amount) AS total_revenue
FROM orders
GROUP BY city;

-- Average revenue per city
SELECT city, AVG(amount) AS average_revenue
FROM orders
GROUP BY city;

-- Count number of orders per city
SELECT city, COUNT(*) AS total_orders
FROM orders
GROUP BY city;

-- Cities with high revenue
SELECT city, SUM(amount) AS total_revenue
FROM orders
GROUP BY city
HAVING SUM(amount) > 300;

-- Rank cities by revenue
SELECT city, SUM(amount) AS total_revenue
FROM orders
GROUP BY city
ORDER BY SUM(amount) DESC;
