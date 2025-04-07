-- SELECT clause
SELECT *
FROM products;

SELECT product_id, model
FROM products;

-- WHERE clause
SELECT model
FROM products
WHERE year = 2014;

-- AND and OR clauses
SELECT model, year, base_msrp
FROM products
WHERE year = 2014
  AND base_msrp <= 1000;

SELECT model, year, product_type
FROM products
WHERE year = 2014
   OR product_type = 'automobile';

SELECT *
FROM products
WHERE (year > 2016 AND year < 2018)
   OR product_type = 'scooter';

-- IN and NOT IN clauses
SELECT model, year
FROM products
WHERE year IN (2014, 2016, 2019); -- the same as --> WHERE year = 2014 OR year = 2016 OR year = 2019;

SELECT model, year
FROM products
WHERE year NOT IN (2014, 2016, 2019);

-- ORDER BY clause
SELECT model, production_start_date
FROM products
ORDER BY production_start_date; -- ascending order, default value ASC

SELECT model, production_start_date
FROM products
ORDER BY production_start_date DESC; -- descending order

SELECT product_id, model
FROM products
ORDER BY 1; -- you can specify the column number to sort by instead of the name, the same as --> ORDER BY product_id

SELECT *
FROM products
ORDER BY year DESC, base_msrp ASC;

-- LIMIT clause
SELECT model
FROM products
ORDER BY production_start_date
LIMIT 5;

-- IS NUL and IS NOT NULL clauses
SELECT *
FROM products
WHERE production_end_date IS NULL;

SELECT *
FROM products
WHERE production_end_date IS NOT NULL;


-- Examples
SELECT *
FROM salespeople
WHERE dealership_id = 17
ORDER BY hire_date
LIMIT 10;

SELECT *
FROM salespeople
WHERE hire_date >= '2021-01-01'
  AND termination_date IS NULL
ORDER BY hire_date DESC;

SELECT *
FROM salespeople
WHERE first_name LIKE 'Nic%'
  AND hire_date >= '2021-01-01'
  AND hire_date <= '2021-12-31';

SELECT email
FROM customers
WHERE state = 'FL'
ORDER BY email;

SELECT first_name, last_name, email
FROM customers
WHERE city = 'New York City'
  AND state = 'NY'
ORDER BY last_name, first_name;

SELECT *
FROM customers
WHERE phone IS NOT NULL
ORDER BY date_added;