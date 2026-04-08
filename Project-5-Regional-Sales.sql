-- Project 5: Regional Sales Performance Analysis

-- Revenue from high-value orders (amount > 100)
SELECT city, SUM(amount) AS total_revenue
FROM orders
WHERE amount > 100
GROUP BY city;

-- Cities with high total revenue from large orders
SELECT city, SUM(amount) AS total_revenue
FROM orders
WHERE amount > 100
GROUP BY city
HAVING SUM(amount) > 300;

-- Rank cities by high-value revenue
SELECT city, SUM(amount) AS total_revenue
FROM orders
WHERE amount > 100
GROUP BY city
ORDER BY SUM(amount) DESC;

-- Count number of high-value orders per city
SELECT city, COUNT(*) AS total_high_value_orders
FROM orders
WHERE amount > 100
GROUP BY city
ORDER BY COUNT(*) DESC;
