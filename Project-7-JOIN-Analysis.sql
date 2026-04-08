-- Project 7: Multi-Table JOIN Analysis

-- Combine sales and products tables
SELECT s.product_id, p.product_name
FROM sales s
JOIN products p
ON s.product_id = p.product_id;

-- Total revenue per product
SELECT p.product_name, SUM(s.amount) AS total_revenue
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.product_name;

-- Total revenue per category
SELECT p.category, SUM(s.amount) AS total_revenue
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.category;

-- Rank categories by total revenue
SELECT p.category, SUM(s.amount) AS total_revenue
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY SUM(s.amount) DESC;
