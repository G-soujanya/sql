/*USE sql_blog;
SELECT * FROM posts 
WHERE title LIKE '%react redux%' OR 
		body LIKE '%react redux%';*/
/*USE sql_store;
EXPLAIN SELECT customer_id FROM customers 
WHERE state='CA' AND points>1000;*/
-- CREATE INDEX idx_state_points ON customers(state,points);
/*EXPLAIN SELECT customer_id FROM customers 
WHERE state='CA' AND points>1000;*/
-- DROP INDEX idx_state ON customers;
-- DROP INDEX idx_points ON customers;
/*SELECT customer_id FROM customers
WHERE state='CA' AND last_name LIKE 'A%';*/
/*SELECT COUNT(DISTINCT state),
		COUNT(DISTINCT last_name)
        FROM customers;*/
-- CREATE INDEX idx_lastname_state ON customers(last_name,state);
-- CREATE INDEX idx_state_lastname ON customers(state,last_name);
/*EXPLAIN SELECT customer_id FROM customers
WHERE state='CA' AND last_name LIKE 'A%';*/
/*EXPLAIN SELECT customer_id FROM customers
USE INDEX(idx_lastname_state)
WHERE state='CA' AND last_name LIKE 'A%';*/
/*EXPLAIN SELECT customer_id FROM customers
USE INDEX(idx_lastname_state)
WHERE state LIKE 'A%' AND last_name LIKE 'A%';*/
/*EXPLAIN SELECT customer_id FROM customers
USE INDEX(idx_state_lastname)
WHERE state LIKE 'A%' AND last_name LIKE 'A%';*/
/*EXPLAIN SELECT customer_id 
FROM customers 
USE INDEX(idx_state_lastname) 
WHERE last_name LIKE 'A%';*/
-- CREATE INDEX idx_lastname ON customers(last_name);
/*EXPLAIN SELECT customer_id 
FROM customers 
USE INDEX(idx_lastname) 
WHERE last_name LIKE 'A%';*/
/*EXPLAIN SELECT customer_id FROM customers 
WHERE state='CA' OR points>100;
*/
/*CREATE INDEX idx_points ON customers(points);
EXPLAIN 
	SELECT customer_id FROM customers 
    WHERE state='CA' 
    UNION 
    SELECT customer_id FROM customers
    WHERE points>1000;*/
  /*  EXPLAIN SELECT customer_id FROM customers 
    WHERE points+10>2010;
*/
/*EXPLAIN SELECT customer_id FROM customers 
    WHERE points>2000;*/
-- EXPLAIN SELECT customer_id FROM customers ORDER BY state;
-- EXPLAIN SELECT customer_id FROM customers ORDER BY first_name;
-- SHOW STATUS;
-- SHOW STATUS LIKE 'last_query_cost';
-- EXPLAIN SELECT customer_id FROM customers ORDER BY state;
-- SHOW STATUS LIKE 'last_query_cost';
/*EXPLAIN SELECT customer_id FROM customers ORDER BY state,points;
SHOW STATUS LIKE 'last_query_cost';*/
/*EXPLAIN SELECT customer_id FROM customers ORDER BY state,points DESC;
SHOW STATUS LIKE 'last_query_cost';*/
/*EXPLAIN SELECT customer_id FROM customers ORDER BY state DESC,points DESC;
SHOW STATUS LIKE 'last_query_cost';*/
/*EXPLAIN SELECT customer_id FROM customers ORDER BY state,first_name,points;
SHOW STATUS LIKE 'last_query_cost';*/
/*DROP INDEX idx_points ON customers;
EXPLAIN SELECT customer_id FROM customers ORDER BY points;
SHOW STATUS LIKE 'last_query_cost';*/
/*EXPLAIN SELECT customer_id FROM customers WHERE STATE='CA' ORDER BY points ;
SHOW STATUS LIKE 'last_query_cost';*/
/*EXPLAIN SELECT * FROM customers ORDER BY state;
SHOW STATUS LIKE 'last_query_cost';*/
EXPLAIN SELECT customer_id,points,state FROM customers ORDER BY state;
SHOW STATUS LIKE 'last_query_cost';
