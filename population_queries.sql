-- How many entries in the database are from Africa?
SELECT COUNT(*)
FROM countries
WHERE continent = "Africa";
-- 56;

-- What was the total population of Oceania in 2005?
SELECT SUM(population)
FROM countries
JOIN population_years
  ON countries.id = population_years.country_id
  WHERE continent = "Oceania" 
  AND year = 2005;
-- 32.66417;

-- What is the average population of countries in South America in 2003?
SELECT AVG(population)
FROM countries
JOIN population_years
  ON countries.id = population_years.country_id
  WHERE continent = "South America"
  AND year = 2003;
-- 25.8906514285714;


-- What country had the smallest population in 2007?
SELECT MIN(population)
FROM countries
JOIN population_years
  ON countries.id = population_years.country_id
  WHERE year = 2007;
-- 00216;


-- What is the average population of Poland during the time period covered by this dataset?
SELECT AVG(population)
FROM countries
JOIN population_years
  ON countries.id = population_years.country_id
  WHERE name = "Poland";
--38.5606790909091;

-- How many countries have the word "The" in their name?
SELECT COUNT(*)
FROM countries
  WHERE name LIKE "%The%";
-- 4;


-- What was the total population of each continent in 2010?
SELECT continent, AVG(population)
FROM countries
JOIN population_years
  ON countries.id = population_years.country_id
  WHERE year = 2010
  GROUP BY continent;
-- Africa 	18.1335439285714;
-- Asia 	81.0410094117647;
-- Europe 	18.5400112820513;
-- North America 	15.4227017142857;
-- Oceania 	2.05629176470588;
-- South America 	28.3273107142857; 

