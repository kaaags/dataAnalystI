--17. %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/*1. Write a query to return the 10 earliest orders in the orders table. Include the id, occurred_at, and total_amt_usd.*/

SELECT id, occurred_at, total_amt_usd
	FROM orders
	ORDER BY occurred_at
	LIMIT 10

/*2. Write a query to return the top 5 orders in terms of largest total_amt_usd. Include the id, account_id, and total_amt_usd.*/

SELECT id, account_id, total_amt_usd
	FROM orders
	ORDER BY total_amt_usd DESC
	LIMIT 5

/*Write a query to return the bottom 20 orders in terms of least total. Include the id, account_id, and total.*/

SELECT id, account_id, total
	FROM orders
	ORDER BY total
	LIMIT 20;

--21. %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/*Write a query that returns the top 5 rows from orders ordered according to newest to oldest, but with the largest total_amt_usd for each date listed first for each date.*/

SELECT *
	FROM orders
	ORDER BY occurred_at DESC, total_amt_usd DESC
	LIMIT 5;

/*Write a query that returns the top 10 rows from orders ordered according to oldest to newest, but with the smallest total_amt_usd for each date listed first for each date.*/

SELECT *
	FROM orders
	ORDER BY occurred_at, total_amt_usd
	LIMIT 10;

--23. %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/*1. Pull the first 5 rows and all columns from the orders table that have a dollar amount of gloss_amt_usd greater than or equal to 1000.*/

SELECT *
	FROM orders
	WHERE gloss_amt_usd >= 1000
	LIMIT 5;

/*2. Pull the first 10 rows and all columns from the orders table that have a total_amt_usd less than 500*/

SELECT *
	FROM orders
	WHERE total_amt_usd < 500
	LIMIT 10;

--26. %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/*1. Filter the accounts table to include the company name, website, and the primary point of contact (primary_poc) for Exxon Mobil in the accounts table.*/

SELECT name, website, primary_poc
	FROM accounts
	WHERE name = 'Exxon Mobil';

--29. %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/*Using the orders table:*/

/*1. Create a column that divides the standard_amt_usd by the standard_qty to find the unit price for standard paper for each order. Limit the results to the first 10 orders, and include the id and account_id fields.*/

SELECT id, account_id, standard_amt_usd/standard_qty AS standard_paper_unit_price
	FROM orders
	LIMIT 10;

/*2. Write a query that finds the percentage of revenue that comes from poster paper for each order. You will need to use only the columns that end with _usd. (Try to do this without using the total column). Include the id and account_id fields. NOTE - you will be thrown an error with the correct solution to this question. This is for a division by zero. You will learn how to get a solution without an error to this query when you learn about CASE statements in a later section. For now, you might just add some very small value to your denominator as a work around. */

SELECT id, account_id, poster_amt_usd/(standard_amt_usd+gloss_amt_usd+poster_amt_usd+.001) AS poster_rev_perc
	FROM orders;

--33. %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/*1. All the companies whose names start with 'C'.*/

SELECT *
	FROM accounts
	WHERE name LIKE 'C%';

/*2. All companies whose names contain the string 'one' somewhere in the name.*/

SELECT *
	FROM accounts
	WHERE name LIKE '%one%';

/*3. All companies whose names end with 's'.*/

SELECT *
	FROM accounts
	WHERE name LIKE '%s';

--36. %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/*1. Use the accounts table to find the account name, primary_poc, and sales_rep_id for Walmart, Target, and Nordstrom.*/

SELECT name, primary_poc, sales_rep_id
	FROM accounts
	WHERE name IN ('Walmart', 'Target', 'Nordstrom');

/*2. Use the web_events table to find all information regarding individuals who were contacted via the channel of organic or adwords.*/

SELECT *
	FROM web_events
	WHERE channel IN ('organic', 'adwords');