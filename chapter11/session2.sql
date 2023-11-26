/*USE sql_store;
START TRANSACTION;
UPDATE customers 
SET points=30
WHERE customer_id=1;
COMMIT;*/
/*USE sql_store;
START TRANSACTION;
UPDATE customers 
SET points=110
WHERE customer_id=1;
COMMIT;*/
/*USE sql_store;
START TRANSACTION;
UPDATE customers 
SET points=1100
WHERE customer_id=1;
COMMIT;*/
/*USE sql_store;
START TRANSACTION;
UPDATE customers 
SET points=1200
WHERE customer_id=1;
COMMIT;*/
USE sql_store;
START TRANSACTION;
UPDATE customers 
SET state='VA'
WHERE customer_id=3;
COMMIT;