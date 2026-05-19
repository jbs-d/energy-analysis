-- 1. Top 10 cities by number of connections
SELECT city, SUM(num_connections) AS total_connections
FROM electricity
GROUP BY city
ORDER BY total_connections DESC
LIMIT 10;

-- 2. Top 10 cities by average annual consumption
SELECT city, AVG(annual_consume) AS avg_consumption_kwh
FROM electricity
GROUP BY city
ORDER BY avg_consumption_kwh DESC
LIMIT 10;

-- 3. Top 10 cities by smart meter adoption
SELECT city, AVG(smartmeter_perc) AS avg_smartmeter
FROM electricity
GROUP BY city
ORDER BY avg_smartmeter DESC
LIMIT 10;

-- 4. Combined analysis: connections, consumption and smart meter rate
SELECT city,
       SUM(num_connections) AS total_connections,
       AVG(annual_consume) AS avg_consume,
       AVG(smartmeter_perc) AS avg_smartmeter
FROM electricity
WHERE num_connections > 100
GROUP BY city
ORDER BY avg_smartmeter DESC
LIMIT 10;

