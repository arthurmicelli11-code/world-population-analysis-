
-- Total population per continent in 2020

SELECT continent, SUM(population) AS total_population
FROM world_population
WHERE year = 2020
GROUP BY continent
ORDER BY total_population DESC;


-- Top 5 countries by population growth from 2000 to 2020

SELECT country,
       (MAX(CASE WHEN year = 2020 THEN population END) -
        MAX(CASE WHEN year = 2000 THEN population END)) AS growth
FROM world_population
GROUP BY country
ORDER BY growth DESC
LIMIT 5;


-- Average population per year by continent

SELECT continent, year, AVG(population) AS avg_population
FROM world_population
GROUP BY continent, year
ORDER BY continent, year;
