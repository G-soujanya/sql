-- EXPLAIN SELECT customer_id FROM  customers WHERE state='CA';
-- SELECT COUNT(*) FROM customers;
-- CREATE INDEX idx_state ON customers(state);
-- EXPLAIN SELECT customer_id FROM  customers WHERE state='CA';
-- EXPLAIN SELECT customer_id FROM  customers WHERE points>1000;
-- CREATE INDEX idx_points ON customers(points);
-- EXPLAIN SELECT customer_id FROM  customers WHERE points>1000;
-- SHOW INDEXES IN customers;
-- SHOW INDEXES IN orders;
-- ANALYZE TABLE customers;
USE sql_blog;
SELECT * FROM posts 
WHERE title LIKE '%react redux%' OR 
		body LIKE '%react redux%';
