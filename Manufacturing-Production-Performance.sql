-- Manufacturing Production Performance Analysis

-- Total units produced per machine
SELECT machine_id, SUM(units_produced) AS total_units
FROM production
GROUP BY machine_id;

-- Average downtime per machine
SELECT machine_id, AVG(downtime_minutes) AS avg_downtime
FROM production
GROUP BY machine_id;

-- Rank machines by total output
SELECT machine_id, SUM(units_produced) AS total_units
FROM production
GROUP BY machine_id
ORDER BY SUM(units_produced) DESC;

-- Machines with high downtime
SELECT machine_id, AVG(downtime_minutes) AS avg_downtime
FROM production
GROUP BY machine_id
HAVING AVG(downtime_minutes) > 20;

-- Efficiency analysis (units per downtime minute)
SELECT machine_id,
       SUM(units_produced) / SUM(downtime_minutes) AS efficiency_ratio
FROM production
GROUP BY machine_id
ORDER BY efficiency_ratio DESC;
