-- Project 1: Sales Performance Analysis

-- Total number of orders
SELECT COUNT(*)
FROM orders;

-- Total revenue
SELECT SUM(amount)
FROM orders;

-- Average order value
SELECT AVG(amount)
FROM orders;

-- Revenue per city
SELECT city, SUM(amount)
FROM orders
GROUP BY city;

-- High-performing cities
SELECT city, SUM(amount)
FROM orders
GROUP BY city
HAVING SUM(amount) > 200;
