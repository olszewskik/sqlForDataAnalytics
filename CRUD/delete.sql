/* deleting values from a row

   UPDATE {table_name} SET
       {column_1} = NULL,
       {column_2} = NULL,
       ...
       {last_column} = NULL
   WHERE {condition};
 */

UPDATE customers
SET email = NULL
WHERE customer_id = 3;


/* deleting rows from a table

   DELETE FROM {table_name}
   WHERE {condition}
 */

DELETE
FROM products_2014
WHERE product_type = 'scooter';


/* deleting tables

   DROP TABLE {table_name};
 */

DROP TABLE products_2014;
DROP TABLE IF EXISTS products_2014;

DROP TABLE IF EXISTS  state_populations;
