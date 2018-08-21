/*Database SQL query for Project 1.*/

/*Export the temperature data for the world as well as for the closest big city to where you live.*/

/*Write a SQL query to extract the city level data. Export to CSV.*/

/*1. Isolate the correct country name.*/

SELECT city, country
	FROM city_list
	WHERE country LIKE 'U%';

/*2. Found the correct country name.*/

SELECT city, country
	FROM city_list
	WHERE country = 'United States';

/*3. Search for city name 'Honolulu'.*/

SELECT city, country
	FROM city_list
	WHERE country = 'United States' AND city LIKE 'H%';

/*Write a SQL query to extract the global data. Export to CSV.*/