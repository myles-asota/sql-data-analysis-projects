-- Project 6: Retail Category Analysis

-- Total revenue per category
SELECT category, SUM(amount) AS total_revenue
FROM sales
GROUP BY category;

-- Rank categories by total revenue
SELECT category, SUM(amount) AS total_revenue
FROM sales
GROUP BY category
ORDER BY SUM(amount) DESC;

-- Cities generating high category revenue
SELECT city, SUM(amount) AS total_revenue
FROM sales
WHERE amount > 300
GROUP BY city;

-- High-performing categories with large revenue
SELECT category, SUM(amount) AS total_revenue
FROM sales
GROUP BY category
HAVING SUM(amount) > 1000;
