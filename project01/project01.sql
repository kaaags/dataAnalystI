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

/*4. Search for next nearest city name 'Los Angeles'.*/

SELECT city, country
	FROM city_list
	WHERE country = 'United States' AND city LIKE 'L%';

/*5. Found city name 'Los Angeles'.*/

SELECT city, country
	FROM city_list
	WHERE country = 'United States' AND city = 'Los Angeles';

/*6. Extract city level data.*/

SELECT *
	FROM city_data
	WHERE country = 'United States' AND city = 'Los Angeles';

/*Write a SQL query to extract the global data. Export to CSV.*/

/*1. Extract global data.*/

SELECT *
	FROM global_data;