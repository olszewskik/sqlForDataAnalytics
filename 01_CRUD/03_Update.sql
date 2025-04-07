/* adding columns

   ALTER TABLE {table_name}
   ADD COLUMN {column_name} {data_type};
 */

ALTER TABLE products_2014
    ADD COLUMN weight INT;


/* removing columns

   ALTER TABLE {table_name}
   DROP COLUMN {column_name};
 */

ALTER TABLE products_2014
    DROP COLUMN weight;


/* adding new data

   INSERT INTO {table_name} (
       {column_1}, {column_2}, ... {last_column}
   )
   VALUES (
       {column_value_1}, {column_value_2}, ... {last_column_value}
   );
 */

INSERT INTO products_2014 (product_id, model, year, product_type, base_msrp, production_start_date, production_end_date)
VALUES (13, 'Nimbus 5000', 2014, 'scooter', 500.00, '2014-03-03', '2020-03-03');


/* adding new data with SELECT query

   INSERT INTO {table_name} ({column_1}, {column_2}, ... {last_column})
   {select_query};
 */

INSERT INTO products_2014 (product_id, model, year, product_type, base_msrp, production_start_date, production_end_date)
SELECT *
FROM products
WHERE year = 2016;


/* updating existing date

   UPDATE {table_name} SET
       {column_1} = {column_value_1},
       {column_2} = {column_value_2},
       ...
       {last_column} = {last_column_value}
   WHERE {condition};
 */

UPDATE products_2014
SET base_msrp = 299.99
WHERE product_type = 'scooter'
  AND year < 2018;


-- example
CREATE TABLE products_2022 AS (SELECT *
                               FROM products
                               WHERE year = 2022);

UPDATE products_2022
SET base_msrp = base_msrp * 1.10
WHERE model = 'Model Chi'
  AND year = 2022;