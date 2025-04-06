/* Create empty table

   CREATE TABLE {table_name} (
   {column_name_1} {data_type_1} {column_constraints_1},
   {column_name_2} {data_type_2} {column_constraints_2},
   {column_name_3} {data_type_3} {column_constraints_3},
   ...
   {column_name_last} {data_type_last} {column_constraints_last},
   );
 */

CREATE TABLE state_populations
(
    state      VARCHAR(2) PRIMARY KEY,
    population NUMERIC
);


DROP TABLE IF EXISTS countries;

CREATE TABLE countries
(
    key           INT PRIMARY KEY,
    name          TEXT UNIQUE,
    founding_year INT,
    capital       TEXT
);


/* Creating a table using a SELECT query

   CREATE TABLE {table_name} AS (
       {select_query}
   );
 */

CREATE TABLE products_2014 AS (SELECT *
                               FROM products
                               WHERE year = 2014);

-- the same as:
SELECT *
INTO products_2014
FROM products
WHERE year = 2014;

-- checking the table column definitions
SELECT ordinal_position, column_name, data_type
FROM information_schema.columns
WHERE table_name = 'products_2014'
ORDER BY ordinal_position;