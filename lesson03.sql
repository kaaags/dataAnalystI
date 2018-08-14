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