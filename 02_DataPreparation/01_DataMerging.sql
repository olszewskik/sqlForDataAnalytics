-- INNER JOIN
SELECT *
FROM salespeople
         INNER JOIN dealerships
                    ON salespeople.dealership_id = dealerships.dealership_id
ORDER BY 1;

SELECT s.*
FROM salespeople AS s
         INNER JOIN dealerships AS d
                    ON d.dealership_id = s.dealership_id
WHERE d.state = 'CA'
ORDER BY 1;

-- OUTER JOIN
-- LEFT JOIN
SELECT *
FROM customers c
         LEFT OUTER JOIN emails e
                         ON e.customer_id = c.customer_id
ORDER BY c.customer_id
LIMIT 1000;

SELECT c.customer_id,
       c.title,
       c.first_name,
       c.last_name,
       c.suffix,
       c.email,
       e.email_id,
       e.email_subject,
       e.opened,
       e.clicked,
       e.bounced,
       e.sent_date,
       e.opened_date,
       e.clicked_date
FROM customers c
         LEFT OUTER JOIN emails e
                         ON c.customer_id = e.customer_id
WHERE e.customer_id IS NULL
ORDER BY c.customer_id
LIMIT 1000;

-- RIGHT JOIN
SELECT e.email_id,
       e.email_subject,
       e.opened,
       e.clicked,
       e.bounced,
       e.sent_date,
       e.opened_date,
       e.clicked_date,
       c.customer_id,
       c.title,
       c.first_name,
       c.last_name,
       c.suffix,
       c.email
FROM emails e
         RIGHT OUTER JOIN customers c
                          ON e.customer_id = c.customer_id
ORDER BY c.customer_id
LIMIT 1000;

-- FULL OUTER JOIN
SELECT *
FROM emails e
         FULL OUTER JOIN customers c
                         ON e.customer_id = c.customer_id;

-- CROSS JOIN
SELECT p1.product_id,
       p1.model,
       p2.product_id,
       p2.model
FROM products p1
         CROSS JOIN products p2;

-- Example
SELECT c.customer_id,
       c.first_name,
       c.last_name,
       c.phone
FROM sales s
         INNER JOIN customers c ON c.customer_id = s.customer_id
         INNER JOIN products p ON p.product_id = s.product_id
WHERE p.product_type = 'automobile'
  AND c.phone IS NOT NULL;